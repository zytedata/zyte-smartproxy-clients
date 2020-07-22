var request = require('request');
var fs = require('fs');

var options = {
    url: process.env.URL,
    ca: fs.readFileSync("crawlera-ca.crt"),
};

var new_req = request.defaults({
    'proxy': 'http://' + process.env.KEY + ':@' + process.env.PROXY
});

function callback(error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(response.headers);
        console.log(body);
    }
    else{
        console.log(error, response, body);
        process.exit(1)
    }
}

new_req(options, callback);
