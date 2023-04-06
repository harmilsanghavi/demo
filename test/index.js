var express = require('express')
var mysql2 = require("mysql2")
var body = require("body-parser")
const bcrypt = require("bcryptjs")
const jwt = require("jsonwebtoken");
const cookieParse = require("cookie-parser")
// const Connection = require('mysql2/typings/mysql/lib/Connection')
var app = express()
var util = require('util');
const req = require('express/lib/request');
const res = require('express/lib/response');
var session = require('express-session');

app.use(express.json());
app.use(express.static('asset'));
app.use(cookieParse())
//app.use(express.static('authentication/images'));

app.set('view engine', 'ejs')

app.use(body.urlencoded({ extended: false }))

app.listen(8014);

app.use(session({
    secret: 'your-secret-key',
    resave: true,
    saveUninitialized: true,
    cookie: {
        maxAge: 24 * 60 * 60 * 1000
    }
}));

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'authentication_demo'
});

connection.connect((err)=>{
    if(err) throw err;
    console.log("connected !");
})

const query = util.promisify(connection.query).bind(connection)

app.get("/getData", async (req, res) => {
    var data = await query(`select * from demo`)
    res.send(data)
})
app.get("/getData2", async (req, res) => {
    // var data = await query(`select * from demo where email='${req.query.user}' and password='${req.query.pass}'`)
    var val = 1
    var result = await query(`select * from demo where email='${req.query.user}' and value_token='${val}'`)

    // for (var i = 0; i < result.length; i++) {
    //     data = bcrypt.compare(req.query.password, result[i].encr_p);

    //     console.log(data)
    //     res.send(data)
    // }
    res.send(result)
})

app.get("/", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken) {
        return res.redirect("/welcome")
    }
    res.render("register")
})

app.get("/login", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken) {
        return res.redirect("/welcome")
    }
    res.render("login")
})

async function hashPassword(password) {
    const hash = await bcrypt.hash(password, 5);
    return hash
}
app.post("/registerData", async (req, res) => {

    var name = req.body.name;
    var email = req.body.email;
    var password = req.body.password;
    // console.log(name);
    // console.log(email);
    // console.log(password);
    //var sql = await query(`select * from register_demo where email='${email}'`)
    var token_random = Math.floor((Math.random() * 10000) + 1);
    var value_token = 0
    var hash2 = await hashPassword(password)
    // console.log(hash2)
    sql = `insert into demo(name,email,encr_p,password,token_random,value_token) values('${name}','${email}','${hash2}','${password}','${token_random}','${value_token}')`;
    var data = await query(sql)
    var id = data.insertId
    //res.redirect("/login")
    res.render("activation", { token_random, id })
})

app.post("/loginData", async (req, res) => {



    var email = req.body.email;
    var password = req.body.password;
    var id, name, data,jwtToken;
    var val = 1
    
    var result = await query(`select * from demo where email='${email}' and value_token='${val}'`)
    console.log("resulr:::::::::::",result)
    if (result == '') {
        res.render("login")
    } else {

    
            data = await bcrypt.compare(password, result[0].encr_p);
            id = result[0].id
            name = result[0].name;
            console.log("welcome", data)

        if (data) {
            console.log("hello")
          
                console.log("ergth4ty5d6tut:::::::::::::::::",result[0]);
               jwtToken =jwt.sign(result[0], "harmil");
                console.log("hello2")
                res.cookie("jwtToken", jwtToken);

  
            res.redirect("/welcome")
            //res.render("welcome", { tokenData })
        } else {
            res.render("login")
        }
    }
})

app.get("/welcome", (req, res) => {
    const jwtToken = req.cookies.jwtToken//req.session.tokenData;
    if (!jwtToken) {
        return res.send(`you are not authorized <a href="/">register</a>`)
    }
    var tokenData = jwt.verify(jwtToken, "harmil")
    res.render("welcome", { tokenData })
})

app.post("/logout", (req, res) => {
    console.log(req.cookies)
    res.clearCookie("jwtToken")
    res.render("login.ejs")
})

app.post("/chnage", async (req, res) => {
    console.log(req.body.id)
    console.log(req.body.name)

    var sql = await query(`update demo set name='${req.body.name}' where id='${req.body.id}'`)
    res.json(sql)
})

app.get("/updatedemo", async (req, res) => {
    console.log(req.query.value)
    var val = 1;
    var sql = await query(`update demo set value_token='${val}' where token_random=${req.query.value}`)

    if (sql) {
        res.redirect("/login")
    }
})

// other Code Link ::::::::::::::::::::::::::::::::::::::::::::
// ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

app.get("/tictactoe", (req, res) => {
    const jwtToken = req.cookies.jwtToken;
    if (!jwtToken) {
        res.send(`you are not authorized <a href="/">register</a>`)
    } else {
        res.send();
    }
})
app.get("/game1", (req, res) => {
    console.log("hi2")
    res.render("tictactoe")
})

app.get("/kukucube", (req, res) => {
    const jwtToken = req.cookies.jwtToken;
    if (!jwtToken) {
        res.send(`you are not authorized <a href="/">register</a>`)
    } else {
        res.send();
    }
})
app.get("/game2", (req, res) => {
    console.log("hi2")
    res.render("kukucube")
})


app.get("/page", (req, res) => {

    const jwtToken = req.cookies.jwtToken;
    if (!jwtToken) {
        res.send(`you are not authorized <a href="/">register</a>`)
    }
    let pag = parseInt(req.query.no) || 1;
    var target, current, orderBy, order

    let limit = 10;
    console.log("order :- " + req.query.order)


    let offset = (pag - 1) * limit
    order = "asc"
    if (req.query.current) {
        current = req.query.current
        target = req.query.target
        order = req.query.order
        orderBy = target
    } else {
        orderBy = "id"
        target = "id"
        current = "id"
        order = "asc"
    }
    var demo = req.query.target

    connection.query(`select * from student order by ${orderBy} ${order} limit ${offset}, ${limit}`, (err, result) => {
        if (err) throw err;

        connection.query(`select count(*) as count from student`, (err, data) => {
            if (err) throw err

            let totalPages = Math.ceil(data[0].count / limit)
            let pages = []
            for (var i = 1; i <= totalPages; i++) {
                pages.push(i)
            }
            res.render('page', { data: result, page: pag, pages: pages, current: orderBy, target: target, order: order })

        })

    })
})




// :::::::::::::::::::::::::::::::::::::::::;;
// :::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::::::::::::::::::::::::::::

app.get("/page2", (req, res) => {
    const jwtToken = req.cookies.jwtToken;
    if (!jwtToken) {
        res.send(`you are not authorized <a href="/">register</a>`)
    }
    let pag = parseInt(req.query.no) || 1;
    var target, current, orderBy, order

    let limit = 10;
    console.log("order :- " + req.query.order)


    let offset = (pag - 1) * limit

    if (req.query.current) {
        current = req.query.current
        target = req.query.target
        order = req.query.order
        orderBy = target
    } else {
        orderBy = "id"
        target = "id"
        current = "id"
        order = "asc"
    }
    var demo = req.query.target

    connection.query(`select * from student order by ${orderBy} ${order} limit ${offset}, ${limit}`, (err, result) => {
        if (err) throw err;

        connection.query(`select count(*) as count from student`, (err, data) => {
            if (err) throw err

            let totalPages = Math.ceil(data[0].count / limit)
            let pages = []
            for (var i = 1; i <= totalPages; i++) {
                pages.push(i)
            }
            res.render('search', { data: result, page: pag, pages: pages, current: orderBy, target: target, order: order })

        })

    })
})
app.get("/search", (req, res) => {
    const jwtToken = req.cookies.jwtToken;
    if (!jwtToken) {
        res.send(`you are not authorized <a href="/">register</a>`)
    }
    var searchValue = req.query.search || ' '
    var multi = req.query.multi
    let pag = parseInt(req.query.no1) || 1;
    let limit = 10;
    let offset = (pag - 1) * limit


    var arr = [], arr2 = [], symbol = []

    var fName, lName, sNumber, sEmail, sCity, date_of_birth

    for (var i = 0; i < searchValue.length; i++) {
        if (searchValue[i] == '^' || searchValue[i] == '~' || searchValue[i] == '@' || searchValue[i] == '!' ||
            searchValue[i] == '%' || searchValue[i] == '#') {
            arr.push(i)
            symbol.push(searchValue[i])
        }
    }
    console.log("String :- " + searchValue)
    console.log("array :- " + arr)

    for (var i = 0; i < arr.length; i++) {
        arr2.push(searchValue.substring(arr[i] + 1, arr[i + 1]))
    }
    var sql = `select * from student where `
    var sql2 = `select count(id) as count from student where `
    if (multi == 'and') {

        console.log(arr2)
        for (var i = 0; i < symbol.length; i++) {
            if (symbol[i] == '^') {
                fName = arr2[i]
                sql += `fName="${fName.trim()}" and `
                sql2 += `fName="${fName.trim()}" and `
            }
            else if (symbol[i] == '~') {
                lName = arr2[i]
                sql += `lName="${lName.trim()}" and `
                sql2 += `lName="${lName.trim()}" and `
            }
            else if (symbol[i] == '@') {
                sNumber = arr2[i]
                sql += `sNumber="${sNumber.trim()}" and `
                sql2 += `sNumber="${sNumber.trim()}" and `
            }
            else if (symbol[i] == '!') {
                sEmail = arr2[i]
                sql += `sEmail="${sEmail.trim()}" and `
                sql2 += `sEmail="${sEmail.trim()}" and `
            }
            else if (symbol[i] == '%') {
                sCity = arr2[i]
                sql += `scity="${sCity.trim()}" and `
                sql2 += `scity="${sCity.trim()}" and `
            }
            else if (symbol[i] == '#') {
                date_of_birth = arr2[i]
                sql += `date_of_birth="${date_of_birth.trim()}" and `
                sql2 += `date_of_birth="${date_of_birth.trim()}" and `
            }
        }
        sql = sql.slice(0, (sql.length - 5))

        sql2 = sql2.slice(0, (sql2.length - 5))


        console.log("count :- " + sql2)

    } else {

        console.log(arr2)
        for (var i = 0; i < symbol.length; i++) {
            if (symbol[i] == '^') {
                fName = arr2[i]
                sql += `fName="${fName.trim()}" `
                sql += 'or '

                sql2 += `fName="${fName.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '~') {
                lName = arr2[i]
                sql += `lName="${lName.trim()}" `
                sql += 'or '

                sql2 += `lName="${lName.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '@') {
                sNumber = arr2[i]
                sql += `sNumber="${sNumber.trim()}" `
                sql += 'or '

                sql2 += `sNumber="${sNumber.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '!') {
                sEmail = arr2[i]
                sql += `sEmail="${sEmail.trim()}" `
                sql += 'or '

                sql2 += `sEmail="${sEmail.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '%') {
                sCity = arr2[i]
                sql += `scity="${sCity.trim()}" `
                sql += 'or '

                sql2 += `scity="${sCity.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '#') {
                date_of_birth = arr2[i]
                sql += `date_of_birth="${date_of_birth.trim()}" `
                sql += 'or '

                sql2 += `date_of_birth="${date_of_birth.trim()}" `
                sql2 += 'or '
            }
        }
        sql = sql.slice(0, (sql.length - 3))

        sql2 = sql2.slice(0, (sql2.length - 3))


    }
    sql += ` limit ${offset},${limit}`
    console.log(sql)
    console.log(sql2)

    connection.query(sql, (err, data) => {
        if (err) throw err

        connection.query(sql2, (err, result) => {
            if (err) throw err

            let totalPages = Math.ceil(result[0].count / limit)
            console.log("totalPages :- " + totalPages)
            let pages = []
            for (var i = 1; i <= totalPages; i++) {
                pages.push(i)
            }
            res.render('search', { data: data, page: pag, pages: pages })
        })
    })

})