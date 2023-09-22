var express = require('express');
const Connection = require('mysql/lib/Connection');
var router = express.Router();
var connection = require('../db_config');

/* GET users listing. */
router.get('/users', function(req, res, next) {
 var getUser = "SELECT * FROM `users`";
 connection.query(getUser,function(err,result){
   if(err){
     console.log(err);
     res.send("unable to get user");
    }
    else{
      res.send(result);
    }
 });
  //res.send('respond with a resource');
});



router.get('/users/:id', function(req, res, next) {
  var getUser = "SELECT * FROM `users` WHERE `id` =" + req.params.id;
  connection.query(getUser,function(err,result){
    if(err){
      console.log(err);
      res.send("unable to get user");
     }
     else{
       res.send(result);
     }
  });
   //res.send('respond with a resource');
 });
module.exports = router;
