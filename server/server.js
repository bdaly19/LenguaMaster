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
    try {
        const result=await pool.query('SELECT questionid, quiztestid, questiontext, answer FROM questions ORDER BY RANDOM()');
        const questions=result.rows.map(row => {
            if (row.answer) {
            const parts=row.answer.split('|');
            const answers=[];
            for(let i=0;i<parts.length;i+=2) {
                answers.push({text: parts[i], isCorrect: parts[i+1]==='true'});
            }
            return {
                questionText: row.questiontext,
                answers: answers
            };
        }
    });
        res.json(questions);
    } catch(err) {
        console.error(err);
        res.status(500).send('Server Error');
    }
});

app.post('/questions', async (req, res) => {
    const {quiztestID, questionText, answer} = req.body;
    try {
        const result = await pool.query('INSERT INTO questions (quiztestid, questiontext, answer) VALUES ($1, $2, $3) RETURNING *', [quiztestID, questionText, answer]);
        res.json(result.rows[0]);
    } catch (err) {
        console.error(err);
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