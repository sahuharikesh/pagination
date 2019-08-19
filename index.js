var express = require("express");
var bodyParser = require('body-parser');
var app = express();



app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(bodyParser.json());
-
/* route to handle login */


app.use('/paginate',require("./api/pagination"));

app.listen(8000);