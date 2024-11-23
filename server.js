import * as dotenv from 'dotenv'
import * as mysql from 'mysql2';


///const mysql = require('mysql2');

const port = process.env.PORT || 8080


dotenv.config()

const db = mysql.createConnection(

{
    host: `${process.env.HOST}`,
    user: `${process.env.USER}`,
    password: `${process.env.PASSWORD}`,
    database: `${process.env.DATABASE}`
},
    console.log(`Connected to the serenity_db.`)



);

db.connect((err) => {
if (err) throw err; 
console.log('Connected to MySQL Database!');

db.query('SELECT * FROM members', function (err, results) {
    console.log(results);
});

db.end();
})




