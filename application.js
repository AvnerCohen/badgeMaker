var app = require('http').createServer(handler);
var fs = require('fs');
var ecstatic = require('ecstatic')(__dirname);

function handler(req, res) {
        ecstatic(req, res);
}

var port = process.env.PORT || 9000;
app.listen(port);