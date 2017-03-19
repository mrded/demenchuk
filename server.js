var express = require('express');

this.server = express();
this.server.use(express.static('assets'));
this.server.set('view engine', 'ejs');

var port = process.env.PORT || 8080;

this.server.get('*', function (req, res) {
  res.render('index');
});

this.server.listen(port);
console.log("Express server listening on port %d", port);
