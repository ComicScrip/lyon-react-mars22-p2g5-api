const express = require('express');
const Joi = require('joi');
const cors = require('cors');
const db = require('./db');

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

module.exports.app = app;
