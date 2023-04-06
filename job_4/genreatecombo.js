var express = require('express')
var mysql2 = require("mysql2")
var body = require("body-parser")
var util = require('util')

var app = express()

app.use(express.json());

app.set('view engine', 'ejs')
app.listen(8005);
app.use(body.urlencoded({ extended: false }))

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'fetch_data'
});

const query = util.promisify(connection.query).bind(connection)

// app.get("/", (req, res) => {
//     res.render("genrateCombo")
// })

async function genrate(name,ismulti="",selectd=""){
    var option=await query(`select * from select_master inner join option_master on select_master.id=option_master.select_id where select_name='${name}'`)
    var s=""
    s+=`<select id="${name}" value="${name}" ${ismulti}>`
    for(var i=0;i<option.length;i++){
        s+=`<option value="${option[i].key_name}">${option[i].value_name}</option>`
    }
    s+=`</slect>`
    return s;
}


// async function combo(){

// }



app.get("/combo", async(req, res) => {
    // var val = req.query.val;

    // getdata(val)
    // //getdata("subject")
    // async function getdata(val){
    //     sql = `select id from select_master where select_name='${val}'`
    //     var select_master_id = await query(sql)
    //     console.log(select_master_id[0].id)
        
    //     var option = await query(`select key_name from option_master where select_id='${select_master_id[0].id}'`)
    //     console.log(option)
    //     res.json(option)
    // }
    // var sql=await query(`select id from job_application.select_master where select_name='relationship'`)
    // var sql2=await query(``)
    // var string1=[]

    // string1=await combo(sql,)

    var dropdownname=await query(`select select_name from select_master`)
    var dropdownstring=[]

    for(var i=0;i<dropdownname.length;i++){
        dropdownstring[dropdownname[i].select_name]=await genrate(dropdownname[i].select_name,"multiple" )
    }
    res.render('genrateCombo',{dropdownstring})
})