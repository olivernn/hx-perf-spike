var http = require('http'),
    util = require('util');

http.createServer(function (req, res) {
  util.log(req.url)
  setTimeout(function () {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('blah\n');
  }, 5000)
}).listen(8124, "127.0.0.1");

console.log('Server running at http://127.0.0.1:8124/');