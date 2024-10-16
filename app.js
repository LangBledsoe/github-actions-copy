const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  //res.send('Hello World!')
  const response = {
    message: "My name is Lang Bledsoe",
    timestamp: Date.now()
};
res.send(JSON.stringify(response));
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})