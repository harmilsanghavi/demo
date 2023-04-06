var express = require('express')
var mysql2 = require("mysql2")
var body = require("body-parser")
const jwt = require("jsonwebtoken");
const cookieParse = require("cookie-parser")
var app = express()
app.use(cookieParse())
var util = require('util')

app.use(express.json());

app.set('view engine', 'ejs')
app.listen(8114);

app.use(body.urlencoded({ extended: false }))

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'job_application'
});

const query = util.promisify(connection.query).bind(connection)

app.get("/",async(req,res)=>{
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var data=await query(`select * from new_data`)
    res.render("tableEvent",{data})
    
})
app.get("/update",async (req,res)=>{
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    // console.log(req.query.id[0])
    // console.log(req.query.f_name)
    //console.log(req.query['demo'+1])
    var upd=await query(`update new_data set f_name='${req.query.f_name}',l_name='${req.query.l_name}',number='${req.query.number}',pincode='${req.query.pincode}',address='${req.query.address}' where id='${req.query.id[0]}'`)
})
app.get("/add_record",async(req,res)=>{
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var inse=await query(`insert into new_data(f_name,l_name,number,pincode,address) values
    ('${req.query.f_name}','${req.query.l_name}','${req.query.number}','${req.query.pincode}',
    '${req.query.address}')`)
    res.json(inse)
})
app.post("/save",async(req,res)=>{
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var id=req.body.id
    var f_name=req.body.f_name
    var l_name=req.body.l_name
    var number=req.body.number
    var pincode=req.body.pincode
    var address=req.body.address
    console.log(id)
    console.log(f_name)
    console.log(l_name)
    console.log(number)
    console.log(pincode)
    console.log(address)
    for(var i=0;i<f_name.length;i++){
        if(id[i]){
            var upd=await query(`update new_data set f_name='${f_name[i]}',
            l_name='${l_name[i]}',number='${number[i]}',
            pincode='${pincode[i]}',address='${address[i]}' where id='${id[i]}'`)
        }else{
            var inse=await query(`insert into new_data(f_name,l_name,number,pincode,address) values
            ('${req.body.f_name[i]}','${req.body.l_name[i]}','${req.body.number[i]}','${req.body.pincode[i]}',
            '${req.body.address[i]}')`)
        }
    }
    console.log("data save")
})