const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

// Example route import
const exampleRoutes = require('./routes/auth');
app.use('/api/example', exampleRoutes);

app.get('/', (req, res) => {
  res.send('API is running');
});

mongoose.connect('mongodb://localhost:27017/books-movies-blog', {});

app.listen(5050, () => {
  console.log('Server started on port 5050');
});