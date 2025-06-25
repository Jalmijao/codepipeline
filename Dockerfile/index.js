const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (_, res) => {
  res.send('Hello from AWS ECR!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});