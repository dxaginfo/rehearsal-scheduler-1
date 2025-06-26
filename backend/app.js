// Basic Node.js/Express backend structure
const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => res.send('Rehearsal Scheduler API'));

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`API running on port ${PORT}`));

// Placeholder for further route and model implementation
