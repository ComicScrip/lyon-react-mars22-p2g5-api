const express = require('express');
const db = require('./db');

const app = express();

app.use(express.json());

const items = [
  { id: 1, name: 'item1' },
  { id: 2, name: 'item2' },
];

app.get('/things', (req, res) => {
  console.log('handling GET /things');
  res.send(items);
});

db.connect((err) => {
  if (err) console.error('error connecting to db');
});

module.exports.app = app;
