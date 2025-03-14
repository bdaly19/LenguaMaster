CREATE TABLE users (
	userID SERIAL PRIMARY KEY,
	username CHARACTER VARYING[50] NOT NULL,
	passwords CHARACTER VARYING[50] NOT NULL,
	email CHARACTER VARYING[100] NOT NULL
);

CREATE TABLE admins (
	adminID SERIAL PRIMARY KEY,
	username CHARACTER VARYING[50] NOT NULL,
	passwords CHARACTER VARYING[50] NOT NULL,
	email CHARACTER VARYING[100] NOT NULL,
	roles CHARACTER VARYING[50] NOT NULL
);

CREATE TABLE lessons (
	lessonID SERIAL PRIMARY KEY,
	title CHARACTER VARYING[100] NOT NULL,
	contents TEXT NOT NULL,
	userID INT REFERENCES users(userID)
);

CREATE TABLE videos (
	videoID SERIAL PRIMARY KEY,
	title CHARACTER VARYING[100] NOT NULL,
	URL CHARACTER VARYING[200] NOT NULL,
	lessonID INT REFERENCES lessons(lessonID)
);

CREATE TABLE questions (
	questionID SERIAL PRIMARY KEY,
	quiztestID INT REFERENCES quizzesTests(quiztestID),
	questionText TEXT NOT NULL,
	answer TEXT NOT NULL
);

CREATE TABLE quizzesTests (
	quiztestID SERIAL PRIMARY KEY,
	title CHARACTER VARYING[100] NOT NULL,
	lessonID INT REFERENCES lessons(lessonID)
);

CREATE TABLE progress (
	progressID SERIAL PRIMARY KEY,
	userID INT REFERENCES users(userID),
	lessonID INT REFERENCES lessons(lessonID),
	completionStatus BOOLEAN DEFAULT FALSE,
	score INT
);