// app/index.js
const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('✅ Hello from app-demo4 Node.js server!');
});

app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT}`);
});
