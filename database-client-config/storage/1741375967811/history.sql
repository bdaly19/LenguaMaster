/* 2025-03-07 14:34:33 [1 ms] */ 
SELECT * FROM users LIMIT 100;
/* 2025-03-07 14:37:08 [2 ms] */ 
SELECT * FROM users  LIMIT 100;
/* 2025-03-07 15:07:48 [8 ms] */ 
DELETE FROM "users" WHERE "userid"=1;
/* 2025-03-07 15:07:54 [3 ms] */ 
SELECT * FROM users  LIMIT 100;
/* 2025-03-07 15:11:35 [6 ms] */ 
DELETE FROM "users" WHERE "userid"=2;
/* 2025-03-07 15:11:40 [1 ms] */ 
SELECT * FROM users LIMIT 100;
/* 2025-03-07 15:13:55 [1 ms] */ 
DELETE FROM "users" WHERE "userid"=3;
/* 2025-03-07 15:13:55 [0 ms] */ 
SELECT * FROM users LIMIT 100;
/* 2025-03-07 15:21:31 [48 ms] */ 
DELETE FROM "users" WHERE "userid"=4;
/* 2025-03-07 15:21:31 [1 ms] */ 
SELECT * FROM users LIMIT 100;
/* 2025-03-20 17:18:37 [51 ms] */ 
SELECT * FROM lessons LIMIT 100;
/* 2025-03-20 17:59:40 [8 ms] */ 
INSERT INTO lessons (lessonid) VALUES (1);
/* 2025-03-20 17:59:49 [1 ms] */ 
SELECT * FROM lessons LIMIT 100;
/* 2025-03-20 18:13:09 [27 ms] */ 
UPDATE lessons SET title='Lesson 1: Introduction', contents='Learn the basics' WHERE lessonid=1;
/* 2025-03-20 18:13:59 [8 ms] */ 
INSERT INTO lessons (lessonid, title, contents) VALUES (2, 'Lesson 2: Vocabulary', 'Learn some words');
/* 2025-03-20 18:14:07 [1 ms] */ 
INSERT INTO lessons (lessonid, title, contents) VALUES (3, 'Lesson 3: Practical Applications', 'Apply the vocabulary and concepts you''ve learned in real world scenarios');
/* 2025-03-20 18:14:10 [7 ms] */ 
INSERT INTO lessons (lessonid, title, contents) VALUES (4, 'Lesson 4: Intermediate', 'Learn intermediate concepts');
/* 2025-03-20 18:14:11 [7 ms] */ 
INSERT INTO lessons (lessonid, title, contents) VALUES (5, 'Lesson 5: Advanced', 'Learn advanced concepts');
/* 2025-03-20 18:14:18 [2 ms] */ 
SELECT * FROM lessons LIMIT 100;
/* 2025-03-20 18:16:33 [2 ms] */ 
SELECT * FROM quizzestests LIMIT 100;
/* 2025-03-20 18:20:42 [9 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES (1, 'Quiz/Test 1', 1);
/* 2025-03-20 18:20:43 [6 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES (2, 'Quiz/Test 2', 2);
/* 2025-03-20 18:20:43 [2 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES (3, 'Quiz/Test 3', 3);
/* 2025-03-20 18:20:44 [3 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES (4, 'Quiz/Test 4', 4);
/* 2025-03-20 18:20:45 [6 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES (5, 'Quiz/Test 5', 5);
/* 2025-03-20 18:20:53 [2 ms] */ 
SELECT * FROM quizzestests LIMIT 100;
/* 2025-03-20 18:27:14 [9 ms] */ 
INSERT INTO questions(questionid, quiztestid, questiontext, answer) VALUES
(1, 1, '¿Cómo te llamas?', 'How are you?|false|What''s your name?|true|Where do you live?|false|Greetings!|false|'),
(2, 1, '¿Cómo estás?', 'Goodbye!|false|Hello!|false|How are you?|true|Where do you live?|false|'),
(3, 1, '¿Dónde vives?', 'Where do you live?|true|Good morning!|false|Nice to meet you!|false|Please!|false|'),
(4, 1, '¡Hola!', 'Thank you!|false|Excuse me!|false|You''re welcome!|false|Hello!|true|'),
(5, 1, '¡Adiós!', 'Goodbye!|true|Hello!|false|Yes!|false|Good night!|false|'),
(6, 1, '¡Buenos días!', 'Good morning!|true|Good night!|false|Goodbye!|false|Hello!|false|'),
(7, 1, '¡Buenas noches!', 'Good night!|true|Good morning!|false|Goodbye!|false|Hello!|false|'),
(8, 1, '¡Gracias!', 'Thank you!|true|Excuse me!|false|You''re welcome!|false|Hello!|false|'),
(9, 1, '¡Por favor!', 'Please!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(10, 1, '¡Sí!', 'Yes!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(11, 1, '¡No!', 'No!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(12, 1, '¡Lo siento!', 'I''m sorry!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(13, 1, '¡Perdón!', 'Excuse me!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(14, 1, '¡De nada!', 'You''re welcome!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(15, 1, '¡Mucho gusto!', 'Nice to meet you!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(16, 1, '¡Hasta luego!', 'See you later!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(17, 1, '¡Hasta mañana!', 'See you tomorrow!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(18, 1, '¡Hasta pronto!', 'See you soon!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(19, 1, '¡Buen provecho!', 'Enjoy your meal!|true|Goodbye!|false|Hello!|false|Good night!|false|'),
(20, 1, '¡Feliz cumpleaños!', 'Happy birthday!|true|Goodbye!|false|Hello!|false|Good night!|false|');
/* 2025-03-20 18:27:25 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-20 18:39:14 [9 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=1;
/* 2025-03-20 18:39:16 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=2;
/* 2025-03-20 18:39:16 [6 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=3;
/* 2025-03-20 18:39:18 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=4;
/* 2025-03-20 18:39:19 [1 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=5;
/* 2025-03-20 18:39:19 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=6;
/* 2025-03-20 18:39:20 [6 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=7;
/* 2025-03-20 18:39:21 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=8;
/* 2025-03-20 18:39:22 [5 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=9;
/* 2025-03-20 18:39:23 [2 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=10;
/* 2025-03-20 18:39:23 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=11;
/* 2025-03-20 18:39:24 [1 ms] */ 
UPDATE questions SET answer = NULL WHERE questionid=1 AND questionid=12;
/* 2025-03-20 18:39:24 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=13;
/* 2025-03-20 18:39:26 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=14;
/* 2025-03-20 18:39:27 [2 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=15;
/* 2025-03-20 18:39:27 [6 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=16;
/* 2025-03-20 18:39:28 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=17;
/* 2025-03-20 18:39:28 [6 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=18;
/* 2025-03-20 18:39:29 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=19;
/* 2025-03-20 18:39:30 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=20;
/* 2025-03-20 18:39:35 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-20 18:39:56 [7 ms] */ 
UPDATE questions SET answer = NULL WHERE quiztestid=1 AND questionid=12;
/* 2025-03-20 18:40:01 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-20 18:52:22 [6 ms] */ 
DELETE FROM "questions" WHERE "questionid" IN (1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19,20,12);
/* 2025-03-20 18:52:22 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-20 18:52:50 [4 ms] */ 
INSERT INTO questions(questionid, quiztestid, questiontext, answer) VALUES
(1, 1, '¿Cómo te llamas?', '{"answers": [{"text": "How are you?", "correct": false}, {"text": "What''s your name?", "correct": true}, {"text": "Where do you live?", "correct": false}, {"text": "Greetings!", "correct": false}]}'),
(2, 1, '¿Cómo estás?', '{"answers": [{"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "How are you?", "correct": true}, {"text": "Where do you live?", "correct": false}]}'),
(3, 1, '¿Dónde vives?', '{"answers": [{"text": "Where do you live?", "correct": true}, {"text": "Good morning!", "correct": false}, {"text": "Nice to meet you!", "correct": false}, {"text": "Please!", "correct": false}]}'),
(4, 1, '¡Hola!', '{"answers": [{"text": "Thank you!", "correct": false}, {"text": "Excuse me!", "correct": false}, {"text": "You''re welcome!", "correct": false}, {"text": "Hello!", "correct": true}]}'),
(5, 1, '¡Adiós!', '{"answers": [{"text": "Goodbye!", "correct": true}, {"text": "Hello!", "correct": false}, {"text": "Yes!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(6, 1, '¡Buenos días!', '{"answers": [{"text": "Good morning!", "correct": true}, {"text": "Good night!", "correct": false}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}]}'),
(7, 1, '¡Buenas noches!', '{"answers": [{"text": "Good night!", "correct": true}, {"text": "Good morning!", "correct": false}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}]}'),
(8, 1, '¡Gracias!', '{"answers": [{"text": "Thank you!", "correct": true}, {"text": "Excuse me!", "correct": false}, {"text": "You''re welcome!", "correct": false}, {"text": "Hello!", "correct": false}]}'),
(9, 1, '¡Por favor!', '{"answers": [{"text": "Please!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(10, 1, '¡Sí!', '{"answers": [{"text": "Yes!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(11, 1, '¡No!', '{"answers": [{"text": "No!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(12, 1, '¡Lo siento!', '{"answers": [{"text": "I''m sorry!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(13, 1, '¡Perdón!', '{"answers": [{"text": "Excuse me!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(14, 1, '¡De nada!', '{"answers": [{"text": "You''re welcome!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(15, 1, '¡Mucho gusto!', '{"answers": [{"text": "Nice to meet you!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(16, 1, '¡Hasta luego!', '{"answers": [{"text": "See you later!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(17, 1, '¡Hasta mañana!', '{"answers": [{"text": "See you tomorrow!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(18, 1, '¡Hasta pronto!', '{"answers": [{"text": "See you soon!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(19, 1, '¡Buen provecho!', '{"answers": [{"text": "Enjoy your meal!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}'),
(20, 1, '¡Feliz cumpleaños!', '{"answers": [{"text": "Happy birthday!", "correct": true}, {"text": "Goodbye!", "correct": false}, {"text": "Hello!", "correct": false}, {"text": "Good night!", "correct": false}]}');
/* 2025-03-20 18:52:59 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-26 15:11:31 [72 ms] */ 
CREATE TABLE answers (
    answerid SERIAL PRIMARY KEY,
    questionid INT NOT NULL,
    answertest TEXT NOT NULL,
    is_correct BOOLEAN NOT NULL,
    FOREIGN KEY (questionid) REFERENCES questions(questionid)
);
/* 2025-03-26 15:13:49 [3 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-26 15:14:31 [29 ms] */ 
DELETE FROM "questions" WHERE "questionid" IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
/* 2025-03-26 17:31:51 [47 ms] */ 
INSERT INTO questions (questionid, quiztestid) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1);
/* 2025-03-26 17:36:23 [14 ms] */ 
UPDATE questions SET questiontext = '¿Cómo te llamas?' WHERE questionid = 1 AND quiztestid = 1;
/* 2025-03-26 17:36:25 [7 ms] */ 
UPDATE questions SET questiontext = '¿Cómo estás?' WHERE questionid = 2 AND quiztestid = 1;
/* 2025-03-26 17:36:26 [7 ms] */ 
UPDATE questions SET questiontext = '¿Dónde vives?' WHERE questionid = 3 AND quiztestid = 1;
/* 2025-03-26 17:36:27 [7 ms] */ 
UPDATE questions SET questiontext = '¡Hola!' WHERE questionid = 4 AND quiztestid = 1;
/* 2025-03-26 17:36:29 [6 ms] */ 
UPDATE questions SET questiontext = '¡Adiós!' WHERE questionid = 5 AND quiztestid = 1;
/* 2025-03-26 17:36:29 [7 ms] */ 
UPDATE questions SET questiontext = '¡Buenos días!' WHERE questionid = 6 AND quiztestid = 1;
/* 2025-03-26 17:36:30 [7 ms] */ 
UPDATE questions SET questiontext = '¡Buenas noches!' WHERE questionid = 7 AND quiztestid = 1;
/* 2025-03-26 17:36:30 [2 ms] */ 
UPDATE questions SET questiontext = '¡Gracias!' WHERE questionid = 8 AND quiztestid = 1;
/* 2025-03-26 17:36:31 [2 ms] */ 
UPDATE questions SET questiontext = '¡Por favor!' WHERE questionid = 9 AND quiztestid = 1;
/* 2025-03-26 17:36:32 [7 ms] */ 
UPDATE questions SET questiontext = '¡Sí!' WHERE questionid = 10 AND quiztestid = 1;
/* 2025-03-26 17:36:33 [7 ms] */ 
UPDATE questions SET questiontext = '¡No!' WHERE questionid = 11 AND quiztestid = 1;
/* 2025-03-26 17:36:34 [6 ms] */ 
UPDATE questions SET questiontext = '¡Lo siento!' WHERE questionid = 12 AND quiztestid = 1;
/* 2025-03-26 17:36:37 [7 ms] */ 
UPDATE questions SET questiontext = '¡Perdón!' WHERE questionid = 13 AND quiztestid = 1;
/* 2025-03-26 17:36:37 [6 ms] */ 
UPDATE questions SET questiontext = '¡De nada!' WHERE questionid = 14 AND quiztestid = 1;
/* 2025-03-26 17:36:38 [7 ms] */ 
UPDATE questions SET questiontext = '¡Mucho gusto!' WHERE questionid = 15 AND quiztestid = 1;
/* 2025-03-26 17:36:39 [7 ms] */ 
UPDATE questions SET questiontext = '¡Hasta luego!' WHERE questionid = 16 AND quiztestid = 1;
/* 2025-03-26 17:36:39 [2 ms] */ 
UPDATE questions SET questiontext = '¡Hasta mañana!' WHERE questionid = 17 AND quiztestid = 1;
/* 2025-03-26 17:36:40 [7 ms] */ 
UPDATE questions SET questiontext = '¡Hasta pronto!' WHERE questionid = 18 AND quiztestid = 1;
/* 2025-03-26 17:36:41 [7 ms] */ 
UPDATE questions SET questiontext = '¡Buen provecho!' WHERE questionid = 19 AND quiztestid = 1;
/* 2025-03-26 17:36:42 [7 ms] */ 
UPDATE questions SET questiontext = '¡Feliz cumpleaños!' WHERE questionid = 20 AND quiztestid = 1;
/* 2025-03-26 22:07:05 [13 ms] */ 
INSERT INTO answers (questionid, answertext, is_correct) VALUES
(1, 'How are you?', false), (1, 'What''s your name?', true), (1, 'Where do you live?', false), (1, 'Hello!', false),
(2, 'Goodbye!', false), (2, 'Hello!', false), (2, 'How are you?', true), (2, 'Where do you live?', false),
(3, 'Where do you live?', true), (3, 'Good morning!', false), (3, 'Nice to meet you!', false), (3, 'Please!', false),
(4, 'Thank you!', false), (4, 'Excuse me!', false), (4, 'You''re welcome!', false), (4, 'Hello!', true),
(5, 'Goodbye!', true), (5, 'Hello!', false), (5, 'Yes!', false), (5, 'Good night!', false),
(6, 'Good morning!', true), (6, 'Good night!', false), (6, 'Goodbye!', false), (6, 'Hello!', false),
(7, 'Good night!', true), (7, 'Good morning!', false), (7, 'Hello!', false), (7, 'Good afternoon!', false),
(8, 'Thank you!', true), (8, 'Excuse me!', false), (8, 'You''re welcome!', false), (8, 'Yes!', false),
(9, 'Please!', true), (9, 'Good night!', false), (9, 'Good afternoon!', false), (9, 'No!', false),
(10, 'Yes!', true), (10, 'No!', false), (10, 'Great!', false), (10, 'Hello!', false),
(11, 'No!', true), (11, 'Impossible!', false), (11, 'Nice!', false), (11, 'Please!', false),
(12, 'I''m sorry!', true), (12, 'It''s okay!', false), (12, 'You''re welcome', false), (12, 'Nice to meet you!', false),
(13, 'Goodbye!', false), (13, 'Excuse me!', true), (13, 'Great!', false), (13, 'Thank you!', false),
(14, 'Really?', false), (14, 'No problem!', false), (14, 'You''re welcome!', true), (14, 'Good morning!', false),
(15, 'Nice to meet you!', true), (15, 'Help!', false), (15, 'Please!', false), (15, 'Nice!', false),
(16, 'Goodbye!', false), (16, 'I''m sorry!', false), (16, 'Impossible!', false), (16, 'See you later!', true),
(17, 'See you later!', false), (17, 'See you tomorrow!', true), (17, 'Nice to meet you!', false), (17, 'See you today!', false),
(18, 'See you soon!', true), (18, 'It''s okay!', false), (18, 'Excuse me!', false), (18, 'Good night!', false),
(19, 'Enjoy your meal!', true), (19, 'Enjoy your day!', false), (19, 'Thank you!', false), (19, 'You''re welcome', false),
(20, 'Goodbye!', false), (20, 'Where do you live?', false), (20, 'Happy birthday!', true), (20, 'Hello!', false);
/* 2025-03-27 17:15:12 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-27 18:09:23 [52 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(21, 2, 'Manzana'), (22, 2, 'Pera'), (23, 2, 'Naranja'), (24, 2, 'Uva'),
(25, 2, 'Sandía'), (26, 2, 'Amarillo'), (27, 2, 'Rojo'), (28, 2, 'Azul'),
(29, 2, 'Rosado'), (30, 2, 'Marrón'), (31, 2, 'Mesa'), (32, 2, 'Silla'),
(33, 2, 'Libro'), (34, 2, 'Lapiz'), (35, 2, 'Teléfono'), (36, 2, 'Pájaro'),
(37, 2, 'Ratón'), (38, 2, 'Pez'), (39, 2, 'Caballo'), (40, 2, 'Vaca');
/* 2025-03-27 18:09:41 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-27 21:50:51 [55 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(81, 21, 'Peach', false), (82, 21, 'Apple', true), (83, 21, 'Banana', false), (84, 21, 'Stawberry', false),
(85, 22, 'Pear', true), (86, 22, 'Grape', false), (87, 22, 'Cherry', false), (88, 22, 'Lemon', false),
(89, 23, 'Lime', false), (90, 23, 'Blueberry', false), (91, 23, 'Orange', true), (92, 23, 'Kiwi', false),
(93, 24, 'Raspberry', false), (94, 24, 'Watermelon', false), (95, 24, 'Coconut', false), (96, 24, 'Grape', true),
(97, 25, 'Watermelon', true), (98, 25, 'Pineapple', false), (99, 25, 'Mango', false), (100, 25, 'Papaya', false),
(101, 26, 'Green', false), (102, 26, 'Yellow', true), (103, 26, 'White', false), (104, 26, 'Blue', false),
(105, 27, 'Red', true), (106, 27, 'Black', false), (107, 27, 'Orange', false), (108, 27, 'Grey', false),
(109, 28, 'Purple', false), (110, 28, 'Pink', false), (111, 28, 'Blue', true), (112, 28, 'Indigo', false),
(113, 29, 'Pink', true), (114, 29, 'Cyan', false), (115, 29, 'Violet', false), (116, 29, 'Magenta', false),
(117, 30, 'Brown', true), (118, 30, 'Grey', false), (119, 30, 'Yellow', false), (120, 30, 'Black', false),
(121, 31, 'Chair', false), (122, 31, 'Floor', false), (123, 31, 'Table', true), (124, 31, 'Bed', false),
(125, 32, 'Couch', false), (126, 32, 'Chair', true), (127, 32, 'Pillow', false), (128, 32, 'Mirror', false),
(129, 33, 'Pen', false), (130, 33, 'Book', true), (131, 33, 'Lamp', false), (132, 33, 'Shelf', false),
(133, 34, 'Window', false), (134, 34, 'Pencil', true), (135, 34, 'Door', false), (136, 34, 'Roof', false),
(137, 35, 'Curtains', false), (138, 35, 'Phone', true), (139, 35, 'Blinds', false), (140, 35, 'Screen', false),
(141, 36, 'Bird', true), (142, 36, 'Bat', false), (143, 36, 'Tiger', false), (144, 36, 'Cat', false),
(145, 37, 'Mouse', true), (146, 37, 'Dog', false), (147, 37, 'Shark', false), (148, 37, 'Owl', false),
(149, 38, 'Fish', true), (150, 38, 'Dolphin', false), (151, 38, 'Whale', false), (152, 38, 'Rooster', false),
(153, 39, 'Horse', true), (154, 39, 'Chicken', false), (155, 39, 'Hippo', false), (156, 39, 'Rhino', false),
(157, 40, 'Cow', true), (158, 40, 'Donkey', false), (159, 40, 'Bull', false), (160, 40, 'Walrus', false);
/* 2025-03-27 21:51:22 [2 ms] */ 
SELECT * FROM answers LIMIT 100;
/* 2025-03-27 21:52:18 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-31 17:33:33 [2 ms] */ 
SELECT * FROM answers LIMIT 100;
/* 2025-03-31 17:34:03 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-03-31 21:11:37 [67 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(41, 3, '¿Cómo te llamas?'), (42, 3, '¿Cómo estás?'), (43, 3, '¿Dónde vives?'), (44, 3, '¡Gracias!'),
(45, 3, '¡Lo siento!'), (46, 3, '¡Feliz cumpleaños!'), (47, 3, '¿Cuál es tu fruta favorita?'), (48, 3, '¿Cuál es tu fruta menos favorita?'),
(49, 3, '¿Qué te gusta en una ensalada?'), (50, 3, '¿Qué fruta comes en el desayuno?'), (51, 3, '¿Cuál es tu color favorito?'), (52, 3, '¿Cuál es tu color menos favorito?'),
(53, 3, '¿De qué color es el chocolate?'), (54, 3, '¿Qué color es común en la naturaleza?'), (55, 3, '¿Qué usas para escribir?'), (56, 3, '¿Qué marca es tu teléfono?'),
(57, 3, '¿Qué género de libros prefieres leer?'), (58, 3, '¿Qué color es un ratón?'), (59, 3, '¿Dónde viven las vacas?'), (60, 3, '¿Qué necesitas para criar peces?');
/* 2025-03-31 21:11:45 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-03 16:22:35 [37 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(161, 41, 'Gracias por preguntar.', false), (162, 41, 'Mi llamo [nombre].', true), (163, 41, 'Tengo 25 años.', false), (164, 41, 'Yo vivo en [lugar].', false),
(165, 42, 'Estoy bien, gracias.', true), (166, 42, 'Me gusta los libros.', false), (167, 42, '¡De ninguna manera!', false), (168, 42, 'Yo estudio física.', false),
(169, 43, 'Yo vivo en [lugar].', true), (170, 43, 'Tengo dos hermanos.', false), (171, 43, 'Me gusta escuchar música pop.', false), (172, 43, 'Yo soy estudiante de ingeniería.', false),
(173, 44, 'Hoy es lunes.', false), (174, 44, 'Mi lugar favorito para vacacionar es la playa.', false), (175, 44, 'De nada.', true), (176, 44, 'Son las tres de la tarde.', false),
(177, 45, '¡El señor Squires es el mejor profesor del mundo!', false), (178, 45, 'Me gusta la pizza.', false), (179, 45, 'Me gusta jugar al fútbol.', false), (180, 45, 'Está bien.', true),
(181, 46, '¡Gracias por los deseos de cumpleaños!', true), (182, 46, 'No tengo idea.', false), (183, 46, 'No me gusta la comida rápida.', false), (184, 46, 'Me gusta las mesas.', false),
(185, 47, 'Mi fruta favorita es la lechuga.', false), (186, 47, 'Mi fruta favorita es el pez.', false), (187, 47, 'Mi fruta favorita son las uvas.', true), (188, 47, 'Mi fruta favorita son los tomates.', false),
(189, 48, 'Mi fruta menos favorita es son las zanahorias.', false), (190, 48, 'Mi fruta menos favorita es son los frijoles.', false), (191, 48, 'Mi fruta menos favorita es son los plátanos.', true), (192, 48, 'Mi fruta menos favorita es el helado.', false),
(193, 49, 'Me gusta la lechuga, los tomates, y las cebollas en una ensalada.', true), (194, 49, 'Tengo una hermana.', false), (195, 49, 'Me gusta la comida rápida.', false), (196, 49, 'Yo vivo en [lugar].', false),
(197, 50, 'Yo como los conejos y los arboles para el desayuno.', false), (198, 50, 'Yo como los camarones y las ostras para el desayuno.', false), (199, 50, 'Yo como los plátanos y las fresas para el desayuno.', true), (200, 50, 'Yo como el queso y la espinaca para el desayuno.', false),
(201, 51, 'Mi color favorita es amarillo.', true), (202, 51, 'Mi color favorita es los guisantes.', false), (203, 51, 'Mi color favorita es los frijoles.', false), (204, 51, 'Mi color favorita es los nuggets.', false),
(205, 52, 'Mi color menos favorita es los pepinillos.', false), (206, 52, 'Mi color menos favorita es azul.', true), (207, 52, 'Mi color menos favorita es la cartas.', false), (208, 52, 'Mi color menos favorita es la piña.', false),
(209, 53, 'Marrón es el color del chocolate.', true), (210, 53, 'Rojo es el color del chocolate.', false), (211, 53, 'Verde es el color del chocolate.', false), (212, 53, 'Negro es el color del chocolate.', false),
(213, 54, 'Rosado es el color común en la naturaleza.', false), (214, 54, 'Blanco es el color común en la naturaleza.', false), (215, 54, 'Verde es el color común en la naturaleza.', true), (216, 54, 'Morado es el color común en la naturaleza.', false),
(217, 55, 'Tu usas una lápiz para escribir.', true), (218, 55, 'Tu usas una grapadora para escribir.', false), (219, 55, 'Tu usas una navaja para escribir.', false), (220, 55, 'Tu usas una pastel para escribir.', false),
(221, 56, 'La marca de mi teléfono es Reloj.', false), (222, 56, 'La marca de mi teléfono es Android.', true), (223, 56, 'La marca de mi teléfono es Botas.', false), (224, 56, 'La marca de mi teléfono es Manzana.', false),
(225, 57, 'Me gusta leer libros de ficción.', true), (226, 57, 'Me gusta leer libros de pizza.', false), (227, 57, 'Me gusta leer libros de béisbol.', false), (228, 57, 'Me gusta leer libros de armario.', false),
(229, 58, 'Anaranjado, verde y azul son los colores de una raton.', false), (230, 58, 'Rojo, rosado y morado son los colores de una raton.', false), (231, 58, 'Amarillo, índigo y gris son los colores de una raton.', false), (232, 58, 'Marrón, negro y gris son los colores de una raton.', true),
(233, 59, 'Las vacas viven en una granja o en los campos.', true), (234, 59, 'Las vacas viven en un acuario.', false), (235, 59, 'Las vacas viven en un sótano.', false), (236, 59, 'Las vacas viven en una computadora.', false),
(237, 60, 'Tu necesitas una bicicleta, una pelota y una raqueta para criar peces.', false), (238, 60, 'Tu necesitas un libro, una lámpara y una silla para criar peces.', false), (239, 60, 'Tu necesitas un acuario, comida para peces y filtros para criar peces.', true), (240, 60, 'Tu necesitas una sartén, una espátula y aceite de cocina para criar peces.', false);
/* 2025-04-03 16:23:10 [1 ms] */ 
SELECT * FROM answers LIMIT 100 OFFSET 200;
/* 2025-04-04 21:31:22 [69 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(61, 4, 'Yo'), (62, 4, 'Tú'), (63, 4, 'El/Ella'), (64, 4, 'Nosotros/Nosotras'),
(65, 4, 'Vosotros/Vosotras'), (66, 4, 'Usted'), (67, 4, 'Ustedes'), (68, 4, 'Ellos/Ellas'),
(69, 4, 'I eat.'), (70, 4, 'We eat.'), (71, 4, 'He/she eats.'), (72, 4, 'They eat.'),
(73, 4, 'You eat (formal).'), (74, 4, 'You eat (informal).'), (75, 4, 'Do you (formal) like to sleep?'), (76, 4, 'Do you (informal) like to sleep?'),
(77, 4, 'We eat dinner together.'), (78, 4, 'I am studying Spanish.'), (79, 4, 'They are doing biology.'), (80, 4, 'You (informal) are going to the mall.');
/* 2025-04-06 16:18:21 [18 ms] */ 
UPDATE questions
SET questiontext='Do you like to sleep? (formal)'
WHERE questionid=75;
/* 2025-04-06 16:18:42 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-06 16:19:26 [8 ms] */ 
UPDATE questions
SET questiontext='Do you like to sleep? (informal)'
WHERE questionid=76;
/* 2025-04-06 16:19:30 [6 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-07 11:20:24 [10 ms] */ 
UPDATE questions
SET questiontext='You are going to the mall. (informal)'
WHERE questionid=80;
/* 2025-04-07 11:20:28 [2 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-07 11:30:56 [8 ms] */ 
SELECT * FROM questions
ORDER BY questionid ASC LIMIT 100;
/* 2025-04-07 11:34:04 [24 ms] */ 
CREATE INDEX idx_questionid ON questions (questionid);
/* 2025-04-07 11:34:48 [28 ms] */ 
CLUSTER questions USING idx_questionid;
/* 2025-04-07 11:35:42 [9 ms] */ 
SELECT * FROM questions
ORDER BY questionid LIMIT 100;
/* 2025-04-07 11:35:56 [7 ms] */ 
SELECT * FROM questions
ORDER BY questionid LIMIT 100;
/* 2025-04-07 21:38:20 [24 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(241, 61, 'I', true), (242, 61, 'Me', false), (243, 61, 'Mine', false), (244, 61, 'Us', false),
(245, 62, 'You (formal singular)', false), (246, 62, 'You (informal singular)', true), (247, 62, 'Us', false), (248, 62, 'We', false),
(249, 63, 'They', false), (250, 63, 'It', false), (251, 63, 'He/She', true), (252, 63, 'You (formal plural)', false),
(253, 64, 'Mine', false), (254, 64, 'I', false), (255, 64, 'Us', false), (256, 64, 'We', true),
(257, 65, 'You all (informal plural Spain only)', true), (258, 65, 'You all (formal plural Spain only)', false), (259, 65, 'Me', false), (260, 65, 'They', false),
(261, 66, 'I', false), (262, 66, 'You (formal singular)', true), (263, 66, 'You (informal singular)', false), (264, 66, 'It', false),
(265, 67, 'You (formal plural)', false), (266, 67, 'You all (informal plural)', false), (267, 67, 'You all (formal plural)', true), (268, 67, 'You (informal plural)', false),
(269, 68, 'It', false), (270, 68, 'Ok', false), (271, 68, 'This', false), (272, 68, 'They', true),
(273, 69, 'Yo como.', true), (274, 69, 'Yo comes.', false), (275, 69, 'Yo come.', false), (276, 69, 'Yo coméis.', false),
(277, 70, 'Nosotros/Nosotras como.', false), (278, 70, 'Nosotros/Nosotras comemos.', true), (279, 70, 'Nosotros/Nosotras comen.', false), (280, 70, 'Nosotros/Nosotras comes.', false),
(281, 71, 'El/Ella coméis.', false), (282, 71, 'El/Ella como.', false), (283, 71, 'El/Ella come.', true), (284, 71, 'El/Ella comemos.', false),
(285, 72, 'Ellos/Ellas come.', false), (286, 72, 'Ellos/Ellas comes.', false), (287, 72, 'Ellos/Ellas como.', false), (288, 72, 'Ellos/Ellas comen.', true),
(289, 73, 'Usted come.', true), (290, 73, 'Tu comes.', false), (291, 73, 'Ustedes comen.', false), (292, 73, 'Vosotros/Vosotras coméis.', false),
(293, 74, 'Vosotros/Vosotras coméis.', false), (294, 74, 'Tu comes.', true), (295, 74, 'Usted come.', false), (296, 74, 'Ustedes comen.', false),
(297, 75, '¿Les gusta dormir?', false), (298, 75, '¿Te gusta dormir?', false), (299, 75, '¿Le gusta dormir?', true), (300, 75, '¿Os gusta dormir?', false),
(301, 76, '¿Le gusta dormir?', false), (302, 76, '¿Os gusta dormir?', false), (303, 76, '¿Les gusta dormir?', false), (304, 76, '¿Te gusta dormir?', true),
(305, 77, 'Nosotros/Nosotras cenamos juntas/juntos.', true), (306, 77, 'Nosotros/Nosotras cenáis juntas/juntos.', false), (307, 77, 'Nosotros/Nosotras cenábamos juntos/juntas.', false), (308, 77, 'Nosotros/Nosotras cena juntos/juntas.', false),
(309, 78, 'Yo estudiando español.', false), (310, 78, 'Estoy estudiando español.', true), (311, 78, 'Está estudiando español.', false), (312, 78, 'Esta estudiando español.', false),
(313, 79, 'Estás haciendo biología.', false), (314, 79, 'Estoy haciendo biología.', false), (315, 79, 'Están haciendo biología.', true), (316, 79, 'Está haciendo biología.', false),
(317, 80, 'Ustedes van al centro comercial.', false), (318, 80, 'Vosotros/Vosotras vais al centro comercial.', false), (319, 80, 'Usted va al centro comercial.', false), (320, 80, 'Tu vas al centro comercial.', true);
/* 2025-04-08 12:47:48 [0 ms] */ 
SELECT * FROM answers LIMIT 100 OFFSET 300;
/* 2025-04-08 14:54:23 [64 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(81, 5, 'Esto es pan comido.'), (82, 5, 'Cuesta un ojo de la cara.'), (83, 5, 'De Pascuas a Ramos.'), (84, 5, 'Romperse una pierda.'),
(85, 5, 'Salirse de control.'), (86, 5, 'Agradable'), (87, 5, 'Fascinante'), (88, 5, 'Curioso'),
(89, 5, 'Sorprendente'), (90, 5, 'Encantador'), (91, 5, 'Descubir'), (92, 5, 'Recordar'),
(93, 5, 'Entender'), (94, 5, 'Aprender'), (95, 5, 'Proponer'), (96, 5, 'Explícitamente'),
(97, 5, 'Tranquilamente'), (98, 5, 'Implícitamente'), (99, 5, 'Simultáneamente'), (100, 5, 'Substancialmente');
/* 2025-04-09 14:01:55 [3 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-09 14:27:40 [49 ms] */ 
UPDATE questions
SET questiontext='Descubrir' WHERE questionid=91;
/* 2025-04-09 14:27:46 [1 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-09 14:30:43 [15 ms] */ 
CREATE INDEX idx_questions ON questions(questionid);
/* 2025-04-09 14:30:53 [32 ms] */ 
CLUSTER questions USING idx_questions;
/* 2025-04-09 14:31:10 [3 ms] */ 
SELECT * FROM questions
ORDER BY questionid LIMIT 100;
/* 2025-04-09 14:47:04 [173 ms] */ 
UPDATE questions SET questiontext='Sustancialmente' WHERE questionid=100;
/* 2025-04-09 15:04:44 [32 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(321, 81, 'This is a piece of cake.', true), (322, 81, 'This is a piece of food.', false), (323, 81, 'This is a piece of pie.', false), (324, 81, 'This is a piece of steak.', false),
(325, 82, 'It costs an eye from the face.', false), (326, 82, 'It costs an arm and a leg.', true), (327, 82, 'It costs an elbow and a foot.', false), (328, 82, 'It costs a hand and a toe.', false),
(329, 83, 'From Easter to Palm Sunday.', false), (330, 83, 'From Christmas to Easter.', false), (331, 83, 'Once in a blue moon.', true), (332, 83, 'From Palm Sunday to Easter.', false),
(333, 84, 'Break a head.', false), (334, 84, 'Break an elbow.', false), (335, 84, 'Break a bone.', false), (336, 84, 'Break a leg.', true),
(337, 85, 'Getting out of hand.', true), (338, 85, 'Taking control.', false), (339, 85, 'Getting under control.', false), (340, 85, 'Staying calm.', false),
(341, 86, 'Fun', false), (342, 86, 'Pleasant', true), (343, 86, 'Great', false), (344, 86, 'Fair', false),
(345, 87, 'Amazing', false), (346, 87, 'Special', false), (347, 87, 'Fascinating/Interesting', true), (348, 87, 'Creative', false),
(349, 88, 'Kind', false), (350, 88, 'Awesome', false), (351, 88, 'Evil', false), (352, 88, 'Curious', true),
(353, 89, 'Suprising', true), (354, 89, 'Happy', false), (355, 89, 'Wonderful', false), (356, 89, 'Incredible', false),
(357, 90, 'Delicious', false), (358, 90, 'Lovely', true), (359, 90, 'Nice', false), (360, 90, 'Firm', false),
(361, 91, 'to answer', false), (362, 91, 'to reach', false), (363, 91, 'to discover', true), (364, 91, 'to research', false),
(365, 92, 'to see', false), (366, 92, 'to save', false), (367, 92, 'to record', false), (368, 92, 'to remember', true),
(369, 93, 'to understand', true), (370, 93, 'to become', false), (371, 93, 'to exist', false), (372, 93, 'to fear', false),
(373, 94, 'to lean', false), (374, 94, 'to learn', true), (375, 94, 'to share', false), (376, 94, 'to apprehend', false),
(377, 95, 'to propose/to get engaged', false), (378, 95, 'to get married', false), (379, 95, 'to propose/to put forward', true), (380, 95, 'to announce', false),
(381, 96, 'Explainably', false), (382, 96, 'Enraged', false), (383, 96, 'Exposed', false), (384, 96, 'Explicitly', true),
(385, 97, 'Calmly/Peacefully', true), (386, 97, 'Forcefully', false), (387, 97, 'Incredibly', false), (388, 97, 'Beautifully', false),
(389, 98, 'Imperfect', false), (390, 98, 'Implicitly', true), (391, 98, 'Wrongfully', false), (392, 98, 'Inexplicitly', false),
(393, 99, 'Carefully', false), (394, 99, 'Sharing', false), (395, 99, 'Simultaneously', true), (396, 99, 'Insufficiently', false),
(397, 100, 'Crazy', false), (398, 100, 'Funny', false), (399, 100, 'Falsely', false), (400, 100, 'Substantially', true);
/* 2025-04-09 16:46:22 [47 ms] */ 
SELECT questiontext FROM questions ORDER BY RANDOM() LIMIT 20;
/* 2025-04-23 13:49:30 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 14:38:40 [53 ms] */ 
INSERT INTO videos (videoid, title, url, lessonid) VALUES
(1, 'Spanish Phrases', 'https://www.youtube.com/watch?v=nE178FMQ1MQ', 1),
(2, 'Common Questions', 'https://www.youtube.com/watch?v=o4TfQq9t9Eg', 1),
(3, 'Colors', 'https://www.youtube.com/watch?v=4efhIAwE0po', 2),
(4, 'Pets', 'https://www.youtube.com/watch?v=TqQDNUjDByQ', 2),
(5, 'Food','https://www.youtube.com/watch?v=1MmqE3s6tXM', 2),
(6, 'Furniture', 'https://www.youtube.com/watch?v=JpJn7aUXGTM', 2),
(7, 'Questions in Life', 'https://www.youtube.com/watch?v=v-8NQl_uaqw', 3),
(8, 'Subject Pronouns', 'https://www.youtube.com/watch?v=2R37p-frVpk', 4),
(9, 'Idioms', 'https://www.youtube.com/watch?v=T9raBbzDYus', 5);
/* 2025-04-23 14:38:49 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 16:49:59 [2 ms] */ 
SELECT * FROM progress LIMIT 100;
/* 2025-04-23 17:09:05 [7 ms] */ 
DELETE FROM "progress" WHERE "progressid" IN (3,2,1);
/* 2025-04-23 17:09:05 [1 ms] */ 
SELECT * FROM progress LIMIT 100;
/* 2025-04-23 18:21:57 [4 ms] */ 
SELECT * FROM videos ORDER BY videoid LIMIT 100;
/* 2025-04-23 18:22:08 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 18:24:42 [2 ms] */ 
SELECT * FROM "lessons" WHERE lessonid = 1;
/* 2025-04-23 18:27:06 [28 ms] */ 
CREATE INDEX idx_videos_pkey ON videos(videoid);
/* 2025-04-23 18:32:32 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 18:46:11 [11 ms] */ 
ALTER TABLE videos
DROP CONSTRAINT IF EXISTS videos_pkey;
/* 2025-04-23 18:47:13 [15 ms] */ 
ALTER TABLE videos
ADD CONSTRAINT videos_pkey PRIMARY KEY (videoid);
/* 2025-04-23 18:48:04 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 18:48:23 [9 ms] */ 
CREATE INDEX idx_videos_order ON videos(videoid);
/* 2025-04-23 18:48:37 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 18:55:24 [11 ms] */ 
ALTER TABLE videos ADD COLUMN order_index INT;
/* 2025-04-23 18:58:20 [1 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 19:00:06 [9 ms] */ 
UPDATE videos SET videoid=1 WHERE videoid=1;
/* 2025-04-23 19:00:09 [2 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 19:00:21 [7 ms] */ 
UPDATE videos SET videoid=2 WHERE videoid=2;
/* 2025-04-23 19:00:23 [2 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-23 19:00:32 [8 ms] */ 
UPDATE videos SET videoid=3 WHERE videoid=3;
/* 2025-04-23 19:00:37 [2 ms] */ 
UPDATE videos SET videoid=4 WHERE videoid=4;
/* 2025-04-23 19:00:43 [7 ms] */ 
UPDATE videos SET videoid=5 WHERE videoid=5;
/* 2025-04-23 19:00:48 [2 ms] */ 
UPDATE videos SET videoid=6 WHERE videoid=6;
/* 2025-04-23 19:00:53 [4 ms] */ 
UPDATE videos SET videoid=7 WHERE videoid=7;
/* 2025-04-23 19:01:00 [7 ms] */ 
UPDATE videos SET videoid=8 WHERE videoid=8;
/* 2025-04-23 19:01:04 [7 ms] */ 
UPDATE videos SET videoid=9 WHERE videoid=9;
/* 2025-04-23 19:01:07 [2 ms] */ 
SELECT * FROM videos LIMIT 100;
/* 2025-04-29 23:34:07 [36 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (5,4);
/* 2025-04-29 23:34:34 [3 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (5,4,1,2,3);
/* 2025-04-29 23:39:04 [10 ms] */ 
ALTER TABLE questions DROP CONSTRAINT questions_quiztestid_fkey;
/* 2025-04-29 23:39:12 [7 ms] */ 
DELETE FROM quizzestests WHERE quiztestid=4;
/* 2025-04-29 23:39:17 [7 ms] */ 
DELETE FROM quizzestests WHERE quiztestid=5;
/* 2025-04-29 23:42:37 [7 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (1,2,3);
/* 2025-04-29 23:44:57 [27 ms] */ 
INSERT INTO quizzestests (quiztestid, title, lessonid) VALUES(1, 'Quiz/Test 1', 1), (2, 'Quiz/Test 2', 2), (3, 'Quiz/Test 3', 3);
/* 2025-04-29 23:45:02 [1 ms] */ 
SELECT * FROM quizzestests LIMIT 100;
/* 2025-04-29 23:49:37 [9 ms] */ 
CREATE TABLE quiztestAnswers (
    answerid SERIAL PRIMARY KEY,
    quiztestid INT NOT NULL,
    questionid INT NOT NULL,
    userid INT NOT NULL,
    answer VARCHAR(255) NOT NULL,
    isCorrect BOOLEAN NOT NULL,
    FOREIGN KEY (quiztestid) REFERENCES quizzestests(quiztestid),
    FOREIGN KEY (questionid) REFERENCES questions(questionid),
    FOREIGN KEY (userid) REFERENCES users(userid)
);
/* 2025-04-29 23:53:56 [3 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (2,1,3);
/* 2025-04-30 14:10:42 [47 ms] */ 
INSERT INTO quizzestests (quiztestid, questiontext, lessonid) VALUES
(1, '¿Qué hora es?', 1), (2, '¿Qué día es hoy?', 1), (3, '¿Qué mes es?', 1), (4, '¿Qué año es?', 1),
(5, '¿Cuántos días tiene febrero?', 1), (6, 'El limón', 1), (7, 'La lima', 1), (8, 'El índigo', 1),
(9, 'El gato', 1), (10, 'La rana', 1);
/* 2025-04-30 14:13:15 [1 ms] */ 
SELECT * FROM quiztestanswers LIMIT 100;
/* 2025-04-30 15:03:32 [29 ms] */ 
INSERT INTO quiztestanswers (answerid, quiztestid, questionid, answer, iscorrect) VALUES
(1, 1, 1, 'La hora es las 4:30 PM.', true), (2, 1, 1, 'La hora es lunes.', false), (3, 1, 1, 'La hora es verano.', false), (4, 1, 1, 'La hora es mantaquilla.', false),
(5, 2, 2, 'Hoy es martes.', false), (6, 2, 2, 'Hoy es miércoles.', true), (7, 2, 2, 'Hoy es malo.', false), (8, 2, 2, 'Hoy es poderoso.', false),
(9, 3, 3, 'Es tarde.', false), (10, 3, 3, 'Es mayonesa.', false), (11, 3, 3, 'Es mayo.', true), (12, 3, 3, 'Es la hora.', false),
(13, 4, 4, 'Es dos tres cuatro.', false), (14, 4, 4, 'Es dos palabras.', false), (15, 4, 4, 'Es dos vil veinticinco.', false), (16, 4, 4, 'Es dos mil veinticinco.', true),
(17, 5, 5, 'Febrero tiene veintinueve días.', true), (18, 5, 5, 'Febrero tiene veintiocho días.', false), (19, 5, 5, 'Febrero tiene veinte días.', false), (20, 5, 5, 'Febrero tiene veintiún días.', false),
(21, 6, 6, 'Pomegranate', false), (22, 6, 6, 'Lemon', true), (23, 6, 6, 'Dragonfruit', false), (24, 6, 6, 'Lime', false),
(25, 7, 7, 'Lemon', false), (26, 7, 7, 'Orange', false), (27, 7, 7,'Lime', true), (28 ,7 ,7 ,'Peach', false),
(29 ,8 ,8 ,'Burgundy', false), (30 ,8 ,8 ,'Magenta', false), (31 ,8 ,8 ,'Violet', false), (32 ,8 ,8 ,'Indigo', true),
(33 ,9 ,9 ,'Cat', true), (34 ,9 ,9 ,'Cheetah', false), (35 ,9 ,9 ,'Lion', false), (36 ,9 ,9 ,'Jaguar', false),
(37 ,10 ,10 ,'Sloth', false), (38 ,10 ,10 ,'Frog', true), (39 ,10 ,10 ,'Snail', false), (40 ,10 ,10 ,'Hyena', false);
/* 2025-04-30 15:03:40 [1 ms] */ 
SELECT * FROM quiztestanswers LIMIT 100;
/* 2025-04-30 15:07:18 [3 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (2,3,4,5,6,7,8,9,10);
/* 2025-04-30 15:08:02 [1 ms] */ 
SELECT * FROM quizzestests LIMIT 100;
/* 2025-04-30 15:08:08 [2 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (2,3,4,5);
/* 2025-04-30 15:08:16 [2 ms] */ 
DELETE FROM "quizzestests" WHERE "quiztestid" IN (2,3,4,5,6,7,8,9,10);
/* 2025-04-30 15:14:12 [6 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(101, 6, '¿Qué hora es?'), (102, 6, '¿Qué día es hoy?'), (103, 6, '¿Qué mes es?'), (104, 6, '¿Qué año es?'),
(105, 6, '¿Cuántos días tiene febrero?'), (106, 6, 'El limón'), (107, 6, 'La lima'), (108, 6, 'El índigo'),
(109, 6, 'El gato'), (110, 6, 'La rana');
/* 2025-04-30 15:14:15 [3 ms] */ 
SELECT * FROM questions LIMIT 100;
/* 2025-04-30 15:24:52 [160 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(401, 101, 'La hora es las 4:30 PM.', true), (402, 101, 'La hora es lunes.', false), (403, 101, 'La hora es verano.', false), (404, 101, 'La hora es mantaquilla.', false),
(405, 102, 'Hoy es martes.', false), (406, 102, 'Hoy es miércoles.', true), (407,102, 'Hoy es malo.', false), (408, 102, 'Hoy es poderoso.', false),
(409, 103, 'Es tarde.', false), (410, 103, 'Es mayonesa.', false), (411, 103, 'Es mayo.', true), (412, 103, 'Es la hora.', false),
(413, 104, 'Es dos tres cuatro.', false), (414, 104, 'Es dos palabras.', false), (415, 104, 'Es dos vil veinticinco.', false), (416, 104, 'Es dos mil veinticinco.', true),
(417, 105, 'Febrero tiene veintinueve días.', true), (418, 105, 'Febrero tiene veintiocho días.', false), (419, 105, 'Febrero tiene veinte días.', false), (420, 105, 'Febrero tiene veintiún días.', false),
(421, 106, 'Pomegranate', false), (422, 106, 'Lemon', true), (423, 106, 'Dragonfruit', false), (424, 106, 'Lime', false),
(425, 107, 'Lemon', false), (426, 107, 'Orange', false), (427, 107, 'Lime', true), (428, 107, 'Peach', false),
(429, 108, 'Burgundy', false), (430, 108, 'Magenta', false), (431, 108, 'Violet', false), (432, 108, 'Indigo', true),
(433, 109, 'Cat', true), (434, 109, 'Cheetah', false), (435, 109, 'Lion', false), (436, 109, 'Jaguar', false),
(437, 110, 'Sloth', false), (438, 110, 'Frog', true), (439, 110, 'Snail', false), (440, 110, 'Hyena', false);
/* 2025-04-30 15:40:52 [45 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(111, 7, '¿Cómo estás?'), (112, 7, '¿Qué hay para almorzar?'), (113, 7, '¿Qué música te gusta?'), (114, 7, '¿Te gusta la escuela?'),
(115, 7, '¿Qué estás haciendo ahora?'), (116, 7, 'Yo estoy leyendo.'), (117, 7, 'Ustedes están predicación.'), (118, 7, 'Nosotros estamos en la casa.'),
(119, 7, 'El/Ella está bailando.'), (120, 7, 'Tu estás dentro.');
/* 2025-04-30 16:08:16 [31 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(441, 111, 'Estoy bien.', true), (442, 111, 'Estoy listo.', false), (443, 111, 'Estoy sabado.', false), (444, 111, 'Estoy rojo.', false),
(445, 112, 'Voy a comer mantequilla para el almuerzo.', false), (446, 112, 'Voy a comer pizza para el almuerzo.', true), (447, 112, 'Voy a comer zapatos para el almuerzo.', false), (448, 112, 'Voy a comer camisa para el almuerzo.', false),
(449, 113, 'Me gusta la musica lechuga', false), (450, 113, 'Me gusta la musica roca.', false), (451, 113, 'Me gusta la musica rock.', true), (452, 113, 'Me gusta la musica zanahoria.', false),
(453, 114, 'Siencio, me gusta la escuela.', false), (454, 114, 'Símo, me gusta la escuela.', false), (455, 114, 'De acuerdo, me gusta la escuela.', false), (456, 114, 'Sí, me gusta la escuela.', true),
(457, 115, 'Yo estoy durmiendo ahora.', true), (458, 115, 'Me estoy durmiendo ahora.', false), (459, 115, 'Tu estoy durmiendo ahora.', false), (460, 115, 'Me gusta durmiendo ahora.', false),
(461, 116, 'I am feeding.', false), (462, 116, 'I am reading.', true), (463, 116, 'I am reaching.', false), (464, 116, 'I am scratching.', false),
(465, 117, 'You are approaching.', false), (466, 117, 'You are eating.', false), (467, 117, 'You are preaching.', true), (468, 117, 'You are here.', false),
(469, 118, 'We do not like the house.', false), (470, 118, 'We are from the house.', false), (471, 118, 'We like the house.', false), (472, 118, 'We are in the house.', true),
(473, 119, 'He/She is dancing.', true), (474, 119, 'He/She is shaking.', false), (475, 119, 'He/She is sitting.', false), (476, 119, 'He/She is exercising.', false),
(477, 120, 'You are outside.', false), (478, 120, 'You are inside.', true), (479, 120, 'You are on the side.', false), (480, 120, 'You are on the edge.', false);
/* 2025-04-30 16:59:55 [9 ms] */ 
INSERT INTO questions (questionid, quiztestid, questiontext) VALUES
(121, 8, 'Meter la pata'), (122, 8, 'Estar en las nubes'), (123, 8, 'No tener pelos en la lengua'), (124, 8, 'Estar como una cabra'),
(125, 8, 'Ser uña y carne'), (126, 8, 'A menudo'), (127, 8, 'De repente'), (128, 8, 'Sin embargo'),
(129, 8, 'Apenas'), (130, 8, 'Por lo tanto');
/* 2025-05-06 08:59:07 [68 ms] */ 
INSERT INTO answers (answerid, questionid, answertext, is_correct) VALUES
(481, 121, 'To screw/mess up.', true), (482, 121, 'To make up.', false), (483, 121, 'To take up.', false), (484, 121, 'To create.', false),
(485, 122, 'To be sleeping.', false), (486, 122, 'To daydream.', true), (487, 122, 'To make things up.', false), (488, 122, 'To fake things.', false),
(489, 123, 'To fall over.', false), (490, 123, 'To not screw up.', false), (491, 123, 'To not mince words.', true), (492, 123, 'To shake things up.', false),
(493, 124, 'To get up.', false), (494, 124, 'To prance around.', false), (495, 124, 'To loose it all.', false), (496, 124, 'To be nuts.', true),
(497, 125, 'To be inseperable.', true), (498, 125, 'To be inspired.', false), (499, 125, 'To be ill.', false), (500, 125, 'To be ignorant.', false),
(501, 126, 'Offer', false), (502, 126, 'Often', true), (503, 126, 'Offensive', false), (504, 126, 'Otherwise', false),
(505, 127, 'Sensual', false), (506, 127, 'Suspense', false), (507, 127, 'Suddenly', true), (508, 127, 'Special', false),
(509, 128, 'Horrifying', false), (510, 128, 'Horrible', false), (511, 128, 'How', false), (512, 128, 'However', true),
(513, 129, 'Barely/Just', true), (514, 129, 'False', false), (515, 129, 'Must', false), (516, 129, 'Host', false),
(517, 130, 'Then', false), (518, 130, 'Therefore', true), (519, 130, 'Thus', false), (520, 130, 'Trust', false);
