const express = require('express');
const router = express.Router();
const { getExample } = require('../controllers/exampleController');

router.get('/', (req, res) => {
  res.send('API is working');
});

module.exports = router;