const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, Express!');
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});


app.get('/api/images', (req, res) => {
  pool.query('SELECT * FROM Image', (error, result) => {
    if (error) {
      console.error('Error fetching Image data:', error);
      res.status(500).json({ error: 'Error fetching Image data' });
    } else {
      res.json(result.rows);
    }
  });
});


