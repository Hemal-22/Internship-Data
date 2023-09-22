const res = require('express/lib/response');
const {
    createPool
} = require('mysql2');

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "mydb",
    connectionLimit: 10
})

pool.query(`select * from users`,(err,result,fieds)=>{
    if(err){
        return console.log(err);
    }
    return console.log(result)
})