const express = require('express');
const app = express();

// Define your routes and application logic here

const port = 3000; // Choose a port number

app.get('/', (req, res) => {
  res.send('Hello, World!');
});


app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
