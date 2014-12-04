

var express = require('express');
var app = express();

app.get('/', function(req,res){
	res.type('text/plain');
	res.send('hello world from docker1');
});


app.listen(8000);
