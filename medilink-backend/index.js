const express = require('express');
const dotenv = require('dotenv');
const authRoutes = require('./routes/auth');
const donationRoutes = require('./routes/donation');
const pickupRoutes = require('./routes/pickup');

dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json());

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/donation', donationRoutes);
app.use('/api/pickup', pickupRoutes);

// Root
app.get('/', (req, res) => {
  res.send('MediLink Backend API');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
