const express = require('express');
const db = require('./db');
const cors = require('cors');
const Joi = require('joi');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/scores', async (req, res) => {
  try {
    const [scores] = await db
      .promise()
      .query('SELECT * FROM scores ORDER BY score DESC, DATE ASC ');
    res.send(scores);
    console.log(scores);
  } catch (err) {
    console.error(err);
    res.status(500).send('Error retrieving scores from db.');
  }
});

app.post('/scores', async (req, res) => {
  try {
    const { player, scorePourc } = req.body;
    const { error: validationErrors } = Joi.object({
      player: Joi.string().max(100).required(),
      scorePourc: Joi.number().max(100).required(),
    }).validate({ player, scorePourc }, { abortEarly: false });

    if (validationErrors) {
      return res.status(422).json({ errors: validationErrors.details });
    }

    const [{ insertId }] = await db
      .promise()
      .query('INSERT INTO scores ( player, score) VALUES (?, ?)', [
        player,
        scorePourc,
      ]);

    res.status(201).send({ player, scorePourc, id: insertId });
  } catch (err) {
    console.error(err);
    res.sendStatus(500);
  }
});

app.get('/jokes', async (req, res) => {
  try {
    const [joke] = await db.promise().query('SELECT * FROM jokes');
    res.send(joke);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

app.get('/jokes/random', async (req, res) => {
  try {
    const [joke] = await db
      .promise()
      .query('SELECT * FROM jokes ORDER BY RAND ()');
    res.send(joke[0]);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

app.post('/jokes', async (req, res) => {
  try {
    const { question, answer } = req.body;
    const { error: validationErrors } = Joi.object({
      question: Joi.string().max(250).required(),
      answer: Joi.string().max(250).required(),
    }).validate({ question, answer }, { abortEarly: false });

    if (validationErrors) {
      return res.status(422).json({ errors: validationErrors.details });
    }
    const [{ insertId }] = await db
      .promise()
      .query('INSERT INTO jokes (question, answer) VALUES (?, ?)', [
        question,
        answer,
      ]);

    res.status(201).send({ id: insertId, question, answer });
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

app.get('/jokes/:id', async (req, res) => {
  try {
    const [[joke]] = await db
      .promise()
      .query('SELECT * FROM jokes WHERE id = ?', [req.params.id]);
    if (joke) res.send(joke);
    console.log(joke);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

app.get('/wildquiz', async (req, res) => {
  try {
    const [wildquiz] = await db.promise().query('SELECT * FROM wildquiz');
    const results = wildquiz.map((quiz) => {
      return {
        ...quiz,
        incorrect_answers: JSON.parse(quiz.incorrect_answers),
      };
    });
    const array = { results };
    res.send(array);
  } catch (err) {
    console.log(err);
    res.status(500).send('something wrong happened');
  }
});

app.get('/lyonquiz', async (req, res) => {
  try {
    const [lyonquiz] = await db.promise().query('SELECT * FROM lyonquiz');
    const results = lyonquiz.map((quiz) => {
      return {
        ...quiz,
        incorrect_answers: JSON.parse(quiz.incorrect_answers),
      };
    });
    const array = { results };
    res.send(array);
  } catch (err) {
    console.log(err);
    res.status(500).send('something wrong happened');
  }
});

module.exports.app = app;
