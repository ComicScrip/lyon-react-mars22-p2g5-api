const express = require('express');
const db = require('./db');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json());

db.connect((err) => {
  if (err) console.error('error connecting to db');
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

module.exports.app = app;
