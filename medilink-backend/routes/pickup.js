const express = require('express');
const router = express.Router();

// Example pickup request route
router.post('/request', (req, res) => {
  // TODO: Integrate with logistics
  res.send('Pickup requested');
});

module.exports = router;
