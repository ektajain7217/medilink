const express = require('express');
const router = express.Router();
const verifyToken = require('../middleware/authMiddleware');

router.post('/create', verifyToken, (req, res) => {
  const userId = req.user.uid;
  // You now have access to authenticated user's ID
  res.send(`Donation received from user: ${userId}`);
});

module.exports = router;
