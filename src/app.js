const express = require('express');
const db = require('./db');

const app = express();

app.use(express.json());

// const items = [
//   { id: 1, name: 'item1' },
//   { id: 2, name: 'item2' },
// ];

// app.get('/things', (req, res) => {
//   console.log('handling GET /things');
//   res.send(items);
// });

db.connect((err) => {
  if (err) console.error('error connecting to db');
});

app.get('/jokes/:id', async (req, res) => {
  try {
    const [[jokes]] = await db
      .promise()
      .query('SELECT * FROM jokes WHERE id = ?', [req.params.id]);
    res.send(jokes);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

module.exports.app = app;
