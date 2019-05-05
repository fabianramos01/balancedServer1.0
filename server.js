var express = require('express');
var app = express();

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});



app.listen(3015, function () {
  console.log('Example app listening on port 3015');
});


app.get('/', function (req, res) {
   res.header('Access-Control-Allow-Origin', "*");
	res.send("Hola mundo Fedora");
});







