var request = require('request');
var fs = require('fs');

request({
    uri: process.env.URL,
    ca: fs.readFileSync("crawlera-ca.crt"),
    proxy: 'http://' + process.env.KEY + ':@' + process.env.PROXY
}, function callback(error, response, body) {
    console.log(error, body);
    if (error || response.statusCode != 200) {
        process.exit(1);
    }
});
