const express = require('express');
const app = express();

const PORT = process.env.PORT || 8000;

app.get('/', (req, res) => {
    // return res.send('I am Nodejs Container, Bye');
    return res.json({ message: 'I am Nodejs Container, Bye' });
});

app.listen(PORT, () => {
    console.log(`Server running on PORT: ${PORT}`);
});
