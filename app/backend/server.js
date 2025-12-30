const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  if (username === 'admin' && password === 'admin') {
    res.json({ success: true, message: 'Login successful' });
  } else {
    res.status(401).json({ success: false, message: 'Invalid credentials' });
  }
});

app.post('/contact', (req, res) => {
  console.log('Contact request:', req.body);
  res.json({ message: 'Message received successfully' });
});

app.listen(3000, () => {
  console.log('Backend running on port 3000');
});

