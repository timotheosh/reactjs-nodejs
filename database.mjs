/*
 * Database module
 */

import postgresql from 'pg';
import fs from 'fs';

const { Pool } = postgresql;

export default (callback = null) => {
  const pool = new Pool({
    user: 'dbuser',
    host: 'dbhost',
    database: 'famous_quotes',
    password: 'dbpassword',
    port: "5432",
    ssl: {
      ca: fs.readFileSync('/path/to/ssl/cert.crt').toString()
    }
  });

  const connection = {
    pool,
    query: (...args) => {
      return pool.connect().then((client) => {
        return client.query(...args).then((res) => {
          client.release();
          return res.rows;
        })
      });
    }
  };

  process.postgresql = connection;

  if (callback) {
    callback(connection);
  }
  return connection;
};
