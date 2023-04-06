var express = require('express')
var mysql2 = require("mysql2")
var body = require("body-parser")
//var core = require("cors")
var app = express()
var technologyLength
// app.use(express.json());

app.set('view engine', 'ejs')

app.use(body.urlencoded({ extended: false }))

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'fetch_data'
});
app.listen(8003);
app.get('/fetch',(req,res)=>{
    connection.query(`select * from state_detail`,(err,data)=>{
        if(err) throw err

        //res.json(data)
        res.send(data)
        //res.render("fetchExample",{data})
    })
})