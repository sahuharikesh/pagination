var connection = require('../config');
const express = require('express');

var mysql = require('mysql');
const routeValidator = require('express-route-validator')
const router = express.Router();


router.post("/platform",routeValidator.validate({   body:{
  'start': { isRequired: true },
  'limit': { isRequired: true }
}
}),function(req, res) {   
//To calculate Total Count use MySQL count function
var query = "Select count(*) as TotalCount from ??"; 
// Mention table from where you want to fetch records example-users
var table = ["users"]; 
query = mysql.format(query, table);
connection.query(query, function(err, rows) {
if(err){
return err;
}else{

//store Total count in variable
let totalCount = rows[0].TotalCount

// if(req.body.start == '' || req.body.limit == ''){
// let startNum = 0;
// let LimitNum = 3;
// }

// else{
//parse int Convert String to number 
let startNum = parseInt(req.body.start);
let LimitNum = parseInt(req.body.limit);

//var query = "Select * from ?? ORDER BY uid  limit ? OFFSET ?";
var query = `select uid,name,address from users u, useradd  a where a.aid= u.uid  ORDER BY uid  limit ? OFFSET ?`
//Mention table from where you want to fetch records example-users & send limit and start 
var table = [LimitNum,startNum];
query = mysql.format(query, table);
connection.query(query, function(err, results) {
if(err)
{
res.json(err);
console.log(err );
}

else
{
// Total Count varibale display total Count in Db and data display the records

res.json({"Total Count": totalCount , "data":results})

}

});
}
// }
});

});
module.exports = router;