var express = require('express');
var app = express();

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});



app.listen(3001, function () {
  console.log('Example app listening on port 3001!');
});


app.get('/', function (req, res) {
   res.header('Access-Control-Allow-Origin', "*");
	res.send("Vengo de fedora :(");
});







