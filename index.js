import express from 'express';
import cors from 'cors';
import postgresql from './database.mjs';

postgresql();

const app = express();
app.use(cors());
app.get('/quotes', async (req, res) => {
  const quotes = await process.postgresql.query('SELECT * FROM quotes');
  res.status(200);
  res.send(JSON.stringify(quotes));
});

const PORT = 3001

app.listen(PORT, () => {
  console.log('App running at http://localhost:', PORT);
});
