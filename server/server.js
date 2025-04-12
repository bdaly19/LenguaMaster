const express = require('express');
const{Pool} = require('pg');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const path = require('path');

const app = express();
const port = 3000;
const secretKey = 'secretkey';

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'language_db',
    password: 'Beezwah0809*',
    port: 5432
});

pool.connect()
.then(() => console.log('Connected to the database'))
.catch(err => console.error('Error connecting to the database', err));

app.use(express.json());
app.use("/client", express.static(path.resolve(__dirname + '/../client')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname + '/../client/html/index.html'));
});

app.use(bodyParser.json());

app.post('/register', async (req, res) => {
    const {username, passwords, email} = req.body;
    const hashedPassword = await bcrypt.hash(passwords, 10);
    try {
        const result = await pool.query('INSERT INTO users (username, passwords, email) VALUES ($1, $2, $3) RETURNING *', [username, hashedPassword, email]);
        res.json(result.rows[0]);
    } catch (err) {
        console.error(err);
        res.status(500).json({message: 'Server Error'});
    }
});

app.get('/register', (req, res) => {
    res.sendFile(path.join(__dirname + '/../client/html/register.html'));
});

app.post('/login', async (req, res) => {
    const {username, passwords} = req.body;
    try {
        const result = await pool.query('SELECT * FROM users WHERE username = $1', [username]);
        if (result.rows.length > 0) {
            const user = result.rows[0];
            const match = await bcrypt.compare(passwords, user.passwords);
            if (match) {
                const token = jwt.sign({id: user.userid}, secretKey);
                res.send({token});
            } else {
                res.status(201).json({message: 'Invalid Credentials'});
            }
        } else {
            res.status(201).json({message: 'Invalid Credentials'});
        }
    } catch (err) {
        console.error(err);
        res.status(201).json({message: 'Server Error'});
    }
});

app.get('/login', (req, res) => {
    res.sendFile(path.join(__dirname + '/../client/html/index.html'));
});

app.get('/dashboard', (req, res) => {
    res.sendFile(path.join(__dirname + '/../client/html/dashboard.html'));
});

app.get('/lessons', async (req, res) => {
    try {
    const result = await pool.query('SELECT * FROM lessons');
    res.json(result.rows);
    } catch (err) {
        console.error(err);
    res.status(500).send('Server Error');
    }
});

app.post('/lessons', async (req, res) => {
    const {title, contents, userid} = req.body;
    try {
        const result = await pool.query('INSERT INTO lessons (title, contents, userid) VALUES ($1, $2, $3) RETURNING *', [title, contents, userid]);
        res.json(result.rows[0]);
    } catch (err) {
        console.error(err);
        res.status(500).send('Server Error');
    }
});

app.get('/questions', async (req, res) => {
    console.log('Fetching questions...');
    const quiztestid = req.query.quiztestid || 1; // Default to quiztestid 1 if not provided
    try {
        const result=await pool.query(`
            SELECT q.questionid, q.questiontext, a.answerid, a.answertext, a.is_correct
            FROM questions q JOIN answers a ON q.questionid = a.questionid
            WHERE q.quiztestid=$1
            ORDER BY RANDOM()`, [quiztestid]
        );
        const questions=result.rows;
        console.log(questions);
        res.json(questions);
    } catch (err) {
        console.error('Error fetching questions', err);
        res.status(500).send('Server Error');
    }
});

app.post('/questions', async (req, res) => {
    const {quiztestid, questiontext, answers} = req.body;
    try {
        const questionResult=await pool.query('INSERT INTO questions (quiztestid, questiontext) VALUES ($1, $2) RETURNING *', [quiztestid, questiontext]);
        const questionId=questionResult.rows[0].questionid;

        const answerPromises=answers.map(answer => {
            return pool.query('INSERT INTO answers (questionid, answertext, is_correct) VALUES ($1, $2, $3)', [questionId, answer.text, answer.isCorrect]);
        });
        await Promise.all(answerPromises);

        res.json(result.rows[0]);
    } catch (err) {
        console.error('Error inserting question or answers:', err);
        res.status(500).send('Server Error');
    }
});

app.get('/answers', async (req, res) => {
    console.log('Fetching answers...');
    const questionid = req.query.questionid || 1; // Default to quiztestid 1 if not provided
    try { //modify to select data from answers table
        const result=await pool.query(`
            SELECT a.answerid, a.answertext, a.is_correct
            FROM answers a
            WHERE a.questionid=$1`, [questionid]);
        const answers=result.rows;
        console.log(answers);
        res.json(answers);
    } catch (err) {
        console.error('Error fetching answers', err);
        res.status(500).send('Server Error');
    }
});

app.get('/progress', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM progress');
        res.json(result.rows);
    } catch (err) {
        console.error(err);
        res.status(500).send('Server Error');
    }
});

app.post('/progress', async (req, res) => {
    const {userID, lessonID, completionStatus, score} = req.body;
    try {
        const result = await pool.query('INSERT INTO progress (userID, lessonID, completionStatus, score) VALUES ($1, $2, $3) RETURNING *', [userID, lessonID, completionStatus, score]);
        res.json(result.rows[0]);
    } catch (err) {
        console.error(err);
        res.status(500).send('Server Error');
    }
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});