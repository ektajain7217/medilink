const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.POSTGRES_URI,
});

pool.connect()
  .then(() => console.log('PostgreSQL connected'))
  .catch(err => console.error('Connection error', err.stack));

module.exports = pool;
