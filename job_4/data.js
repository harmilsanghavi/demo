var express = require('express')
var mysql2 = require("mysql2")
var body = require("body-parser")
const jwt = require("jsonwebtoken");
const cookieParse = require("cookie-parser")
// const Connection = require('mysql2/typings/mysql/lib/Connection')
var app = express()
app.use(cookieParse())
var util = require('util')
const { checkPrime } = require('crypto')
const { Console } = require('console')
var technologyLength
app.use(express.json());

app.set('view engine', 'ejs')

app.use(body.urlencoded({ extended: false }))

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'job_application'
});

const query = util.promisify(connection.query).bind(connection)

app.get("/", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    console.log(jwttoken)
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    connection.query(`select * from state_detail `, (err, data) => {
        if (err) throw err

        connection.query(`select * from option_master where option_master.select_id='2' `, (err, result) => {
            if (err) throw err

            connection.query(`select * from option_master where option_master.select_id='5'`, (err, coursename) => {
                if (err) throw err

                connection.query(`select * from option_master where option_master.select_id='3'`, (err, location) => {
                    if (err) throw err

                    connection.query(`select * from option_master where option_master.select_id='4'`, (err, department) => {
                        if (err) throw err

                        connection.query(`select * from option_master where option_master.select_id='6'`, (err, technology) => {
                            if (err) throw err

                            connection.query(`select * from option_master where option_master.select_id='7'`, (err, language) => {
                                if (err) throw err
                                technologyLength = technology
                                res.render('designJob', { data, result, coursename, location, department, technology, language })
                            })
                            //res.render('designJob',{data,result,coursename,location,department,technology})
                        })
                        //res.render('designJob',{data,result,coursename,location,department})
                    })
                    //res.render('designJob',{data,result,coursename,location})
                })
                //res.render('designJob',{data,result,coursename})
            })
            //res.render('designJob',{data,result})
            console.log()
        })
        //res.render('designJob',{data})
        console.log(data)
    })
})
app.listen(8007);

app.post('/', (req, res) => {
    var jwttoken = req.cookies.jwtToken
    
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var f_name, l_name, designation, address1, address2, email, s_number, city, gender, zipcode, state, relatonship, date_of_birth;
    f_name = req.body.fname;
    l_name = req.body.lName
    designation = req.body.designation
    address1 = req.body.address1
    address2 = req.body.address2
    email = req.body.email
    s_number = req.body.phoneNumber
    city = req.body.city
    gender = req.body.gender
    zipcode = req.body.zipcode
    state = req.body.state
    relatonship = req.body.relationship
    date_of_birth = req.body.birthday

    console.log("city::::::::::::::::::::::",city)
    var coursename, passingyear, university, percentage, course

    //course = req.body.course
    coursename = req.body.courseName;
    passingyear = req.body.pyear
    university = req.body.buname
    percentage = req.body.percentage

    var comapnyname, designation1, start, end
    comapnyname = req.body.cName
    designation1 = req.body.designation1
    start = req.body.startDate
    end = req.body.endDate


    //var language;
    //language = req.body.language
    var language = "", read, write, speak;
    read = req.body.read || '';
    write = req.body.write || '';
    speak = req.body.speak || '';


    id3 = '1'


    // const queryExecutor = (query) => {
    //                 return new Promise((resolve, reject) => {
    //                     console.log(query)
    //                   connection.query(query, (err, result) => {
    //                       if(err) throw err;
    //                     resolve(result)
    //                   })
    //                 })
    //               }

    // for(var i=0;i<language.length;i++){
    //     queryExecutor(`insert into language(ba_id,language_name,read1,write1,speak1) values('1','${language[i]}','${read[i]}','${write[i]}','${speak[i]}')`)
    // }

    var rating, technology, rating2, rating3



    var name, number, relation, name1, number1, relation1
    name = req.body.name
    number = req.body.number
    relation = req.body.relation

    name1 = req.body.name1
    number1 = req.body.number1
    relation1 = req.body.relation1


    var location, notice, expected, current, department
    location = req.body.location
    notice = req.body.notice
    expected = req.body.expected
    current = req.body.current
    department = req.body.department


    technology = req.body.technology || 0
    var abcd = []

    // console.log(abcd)
    // console.log(technology)

    // console.log(language)
    // console.log(technology)
    // console.log(language.length)


    var id, id2
    var state_n

    console.log("state_n :- " + state_n)
    sqlBasic = `insert into basic_detail(f_name,l_name,designation,address1,address2,email,s_number,city,gender,zipcode,state,relationship,date_of_birth) values('${f_name}','${l_name}','${designation}','${address1}','${address2}','${email}','${s_number}','${city}','${gender}','${zipcode}','${state}','${relatonship}','${date_of_birth}')`
    connection.query(sqlBasic, (err, result) => {
        if (err) throw err

        id = result.insertId
        id2 = result.insertId

        console.log(id)

        console.log(id2)
        // console.log("location :- "+location)
        // console.log("notice :- "+notice)
        // console.log("expected :- "+expected)
        // console.log("current :- "+current)
        // console.log("department :- "+department)




        // console.log("name :- "+name)
        // console.log("number :- "+number)
        // console.log("relation :- "+relation)

        // console.log("name1 :- "+name1)
        // console.log("number1 :- "+number1)
        // console.log("relation1 :- "+relation1)



        //console.log("technology :- "+technology)



        // console.log("length:- "+language)
        // console.log("read : "+read)
        // console.log("write : "+write)
        // console.log("speak : "+speak)


        // console.log("comaony Name:- "+comapnyname)
        // console.log("designatiomn:- "+designation)
        // console.log("strt :-        "+start)
        // console.log("end    :-      "+end)
        // console.log(parseInt(id))
        // console.log(typeof(id))


        if (typeof (comapnyname, designation, start, end) == "string") {
            sqlWork = `insert into work_expericence(basic_id,company_name,designation,start_date,end_date) values('${id}','${comapnyname}','${designation1}','${start}','${end}')`;
            connection.query(sqlWork, (err, result) => {
                if (err) throw err

                console.log("data inserted")
            })
        } else {
            for (i = 0; i < comapnyname.length; i++) {

                sqlWork = `insert into work_expericence(basic_id,company_name,designation,start_date,end_date) values('${id}','${comapnyname[i]}','${designation1[i]}','${start[i]}','${end[i]}')`;
                connection.query(sqlWork, (err, result) => {
                    if (err) throw err

                    console.log("data inserted")
                })
            }
        }






        if (typeof (coursename, percentage, university, passingyear) == "string") {
            sqlEduction = `insert into eduction_detail(basic_deatil_id,cource_name,univercity,passing_year,percentage) values('${id}','${coursename}','${university}','${passingyear}','${percentage}')`;
            connection.query(sqlEduction, (err, result) => {
                if (err) throw err

                console.log("data inserted")
            })
        } else {
            for (i = 0; i < coursename.length; i++) {

                sqlEduction = `insert into eduction_detail(basic_deatil_id,cource_name,univercity,passing_year,percentage) values('${id}','${coursename[i]}','${university[i]}','${passingyear[i]}','${percentage[i]}')`;
                connection.query(sqlEduction, (err, result) => {
                    if (err) throw err

                    console.log("data inserted")
                })
            }
        }

        sqlrefrence = `insert into refrences(basic_det_id,name,r_number,relation) values('${id}','${name}','${number}','${relation}')`
        connection.query(sqlrefrence, (err, result) => {
            if (err) throw err

            console.log("refrence1")
        })
        const queryExecutor = (query) => {
            return new Promise((resolve, reject) => {
                connection.query(query, (err, result) => {
                    resolve(result)
                })
            })
        }

        queryExecutor(`insert into prefrences(basic_detai_id,location,notice_period,expected_ctc,current_ctc,department) values('${id}','${location}','${notice}','${expected}','${current}','${department}')`)
        queryExecutor(`insert into refrences(basic_det_id,name,r_number,relation) values('${id}','${name1}','${number1}','${relation1}')`)



        if (typeof (req.body.language) == 'object') {
            language = `insert into language(ba_id,language_name,read1,write1,speak1) values`;
            for (let i = 0; i < req.body.language.length; i++) {
                language += `('${id}','${req.body.language[i]}','${read.includes(req.body.language[i]) ? 'yes' : 'no'}','${write.includes(req.body.language[i]) ? 'yes' : 'no'}','${speak.includes(req.body.language[i]) ? 'yes' : 'no'}'),`;
            }
            language = language.slice(0, language.length - 1);
        } else {
            language = `insert into language(ba_id,language_name,read1,write1,speak1) values('${id}','${req.body.language}','${read == req.body.language ? 'yes' : 'no'}','${write == req.body.language ? 'yes' : 'no'}','${speak == req.body.language ? 'yes' : 'no'}')`;
        }
        connection.query(language, (err, result) => {
            if (err) throw err;

            console.log("record")
        })


        for (var i = 0; i < technology.length; i++) {
            abcd.push(req.body['rating' + technology[i]])
        }
        for (var i = 0; i < abcd.length; i++) {
            if (typeof (technology) == "string") {
                sql = `insert into technology(bas_id,technology_name,rating) values('${id}','${technology}','${abcd[i]}')`
            } else {
                sql = `insert into technology(bas_id,technology_name,rating) values('${id}','${technology[i]}','${abcd[i]}')`
            }
            connection.query(sql, (err, result) => {
                if (err) throw err

                console.log("inserted")
            })
        }
        // console.log("course name:- " + coursename)
        // console.log("passing :- " + passingyear)
        // console.log("uni :-" + university)
        // console.log("percen :- " + percentage)
        //console.log("course :- "+course)
        // var num=0
        // var num2='NULL'
        // //console.log(f_name +" " + l_name + " " + designation +  " " +address1 +  " " +address2 +  " " +email + " " + s_number + " " + city +  " " +gender +  " " +zipcode +  " " +state +  " " +relatonship +  " " +date_of_birth)
    })

})

app.get("/list", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    } else {
        var ajax = req.query.ajax || 'false'
        let pag = parseInt(req.query.no) || 1;
        let limit = 10;
        let offset = (pag - 1) * limit
        var num = 0
        var sql = `select * from basic_detail where is_delete='${num}' or is_delete IS NULL limit ${offset}, ${limit}`;
        var sql2 = `select count(*) as count from basic_detail where is_delete='${num}' or is_delete IS NULL`;
        console.log(sql)
        connection.query(sql, (err, data) => {
            if (err) throw err

            connection.query(sql2, (err, result) => {
                if (err) throw err;

                let totalPages = Math.ceil(result[0].count / limit)
                let pages = []
                for (var i = 1; i <= totalPages; i++) {
                    pages.push(i)
                }
                if (ajax == 'false'){
                console.log("data:::",data);
                    res.render("welcome", { data, pag, pages })
                }else
                    res.json(data)
            })


        })
    }
})

app.get("/fetch", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var id = req.query.id
    //console.log(id)
    connection.query(`select * from city_detail where state_id='${id}'`, (err, data) => {
        if (err) throw err

        res.send(data)
    })
})

app.get("/delete", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var id1 = req.query.id;
    console.log("delete Id ::",id1);
    var num = 0;

    sql = `update basic_detail set is_delete=1 where id='${id1}'`;
    connection.query(sql, (err, data) => {
        if (err) throw err

        else {
            res.json(data)
            console.log("updated")
        }
    })
})

app.post('/multi', (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    console.log(req.body);
    var cd_id = req.query.cd_id;
    connection.query(`update basic_detail set is_delete = 1 where id in (${cd_id})`, (err, result) => {
        if (err) throw err;

    });
    res.json({ ans: "deleted successfully!" })
})

async function combo(id, selecte, name) {
    var sql = await query(`select option_key from option_master where select_id='${id}'`)
    var s = ""
    s += `<select id="${id}" name="${name}">`
    for (var i = 0; i < sql.length; i++) {
        var isselected = (selecte == sql[i].option_key) ? "selected" : ""

        s += `<option value="${sql[i].option_key}" ${isselected}>${sql[i].option_key}</option>`
    }
    s += `</select>`
    return s;
}

async function check(id, check, read2, write2, speak2, name) {
    var totallanguage = await query(`select option_key from option_master where select_id='${id}'`)
    var s = ""
    for (var i = 0; i < totallanguage.length; i++) {
        //var check1= (totallanguage[i]==check[i]) ? "checked" : ""
        var flag = 0
        for (var j = 0; j < check.length; j++) {
            if (totallanguage[i].option_key == check[j]) {
                //console.log("done")
                flag = 1;
                s += `<input type="checkbox" name="${name}" value="${check[j]}" checked>${check[j]}<br>`
                if (read2[j] == 'yes')
                    s += `<input type="checkbox" name="read" value="${check[j]}" checked>read`
                else
                    s += `<input type="checkbox" name="read" value="${check[j]}">read`
                if (write2[j] == 'yes')
                    s += `<input type="checkbox" name="write" value="${check[j]}" checked>write`
                else
                    s += `<input type="checkbox" name="write" value="${check[j]}">write`
                if (speak2[j] == 'yes')
                    s += `<input type="checkbox" name="speak" value="${check[j]}" checked>speak<br>`
                else
                    s += `<input type="checkbox" name="speak" value="${check[j]}">speak<br>`
            }
        }
        if (flag == 0) {

            s += `<input type="checkbox" name="${name}" value="${totallanguage[i].option_key}">${totallanguage[i].option_key}<br>`
            s += `<input type="checkbox" name="read" value="${totallanguage[i].option_key}">read`
            s += `<input type="checkbox" name="write" value="${totallanguage[i].option_key}">write`
            s += `<input type="checkbox" name="speak" value="${totallanguage[i].option_key}">speak<br>`
        }
    }
    return s;
    // s += `<input type="check" name="${name} ">`
}

async function radio(id, tech, rating, name) {
    var totaltech = await query(`select option_key from option_master where select_id='${id}'`)
    var s = ""
    console.log(totaltech)
    console.log(tech)
    for (var i = 0; i < totaltech.length; i++) {
        var flag = 0
        for (var j = 0; j < tech.length; j++) {
            if (totaltech[i].option_key == tech[j]) {
                console.log("inner ")
                flag = 1;
                s += `<input type="checkbox" name="${name}" value="${tech[j]}" checked>${tech[j]}`
                if (rating[j] == "beginner") {
                    s += `<input type=radio name=rating${tech[j]} value="beginner" checked>beginner`
                    s += `<input type=radio name=rating${tech[j]} value="moderate">moderate`
                    s += `<input type=radio name=rating${tech[j]} value="expert">expert<br>`
                } else if (rating[j] == "expert") {
                    s += `<input type=radio name=rating${tech[j]} value="expert" checked>expert`
                    s += `<input type=radio name=rating${tech[j]} value="moderate">moderate`
                    s += `<input type=radio name=rating${tech[j]} value="begineer">begineer<br>`
                } else if (rating[j] == "moderate") {
                    s += `<input type=radio name=rating${tech[j]} value="moderate" checked>moderate`
                    s += `<input type=radio name=rating${tech[j]} value="begineer">begineer`
                    s += `<input type=radio name=rating${tech[j]} value="expert">expert<br>`
                }
            }
        }
        if (flag == 0) {
            console.log("outer")
            s += `<input type="checkbox" name="${name}" value="${totaltech[i].option_key}">${totaltech[i].option_key}`
            s += `<input type=radio name=rating${totaltech[i].option_key} value="begineer">begineer`
            s += `<input type=radio name=rating${totaltech[i].option_key} value="moderate">moderate`
            s += `<input type=radio name=rating${totaltech[i].option_key} value="expert">expert<br>`
        }
    }
    return s;
}

app.get("/editBasic", async (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var id = req.query.id
    var data = await query(`select * from basic_detail where id='${id}'`)
    var work = await query(`select * from work_expericence where basic_id='${id}'`)
    var refrence = await query(`select * from refrences where basic_det_id='${id}'`)
    var prefrence = await query(`select * from prefrences where basic_detai_id='${id}'`)
    var language = await query(`select * from language where ba_id='${id}'`)
    var technology = await query(`select * from technology where bas_id='${id}'`)
    //console.log(prefrence)
    //console.log(data[0].city)
    //var state=await query(`select state_name from state_detail where state_name <> '${data[0].state}'`)
    //var city=await query(`select city_name from city_detail where city_name <> '${data[0].city}'`)
    //var relationkey=await query(`select id from select_master where select_name='relationship'`)
    //var relationship=await query(`select option_key from option_master where option_key <> '${data[0].relationship}' and select_id='${relationkey}'`)

    var sql = await query(`select id from job_application.select_master where select_name='relationship'`)
    var sqlcity = await query(`select id from job_application.select_master where select_name='location'`)
    var sqlstate = await query(`select id from job_application.select_master where select_name='state'`)
    var department = await query(`select id from job_application.select_master where select_name='department'`)
    var totallanguage = await query(`select id from job_application.select_master where select_name='language'`)
    var technologytotal = await query(`select id from job_application.select_master where select_name='technology'`)
    var string1 = []
    //console.log(technology)
    //console.log(technologytotal)
    string1[0] = await combo(sql[0].id, data[0].relationship, "relationship")
    string1[1] = await combo(sqlstate[0].id, data[0].state, "state")
    string1[2] = await combo(sqlcity[0].id, data[0].location, "city")
    string1[3] = await combo(department[0].id, prefrence[0].department, "department")
    var abcd = []
    var read2 = []
    var write2 = []
    var speak2 = []

    for (var i = 0; i < language.length; i++) {
        abcd.push(language[i].language_name)
        read2.push(language[i].read1)
        write2.push(language[i].write1)
        speak2.push(language[i].speak1)
    }
    var tech = []
    var rating = []
    for (var i = 0; i < technology.length; i++) {
        tech.push(technology[i].technology_name)
        rating.push(technology[i].rating)
    }
    //console.log(totallanguage)
    //console.log("array:- " + abcd)
    //console.log("total:- " + totallanguage[0].id)
    string1[4] = await check(totallanguage[0].id, abcd, read2, write2, speak2, "language")
    string1[5] = await radio(technologytotal[0].id, tech, rating, "technology")
    //console.log(string1[0])
    //console.log(language)

    // -------------------------------------------------------------------------------
    // -------------------------------------------------------------------------------

    var dataEduc = await query(`select * from eduction_detail where basic_deatil_id='${id}'`)
    //console.log(dataEduc)
    //console.log(dataEduc.length)
    //console.log("work :-" + work)
    res.render("editBasic", { data, string1, dataEduc, work, refrence, prefrence, language })
    //console.log(data)
    //console.log(work)
    //console.log(city)
    //console.log(state)
    //console.log(relationkey)
    //console.log(relationship)
})

app.get("/search", (req, res) => {
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var ajax = req.query.ajax || 'false'
    let pag = parseInt(req.query.no) || 1;
    let limit = 10;
    let offset = (pag - 1) * limit
    var searchValue = req.query.search
    var multi = req.query.multi


    var arr = [], arr2 = [], symbol = []

    var f_name, l_name, s_number, email, city, designation, address1, address2, gender, zipcode, state

    for (var i = 0; i < searchValue.length; i++) {
        if (searchValue[i] == '^' || searchValue[i] == '~' || searchValue[i] == '&' || searchValue[i] == '!' ||
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
    var sql = `select * from basic_detail where (`
    var sql2 = `select count(id) as count from basic_detail where (`
    if (multi == 'and') {

        console.log(arr2)
        for (var i = 0; i < symbol.length; i++) {
            if (symbol[i] == '^') {
                f_name = arr2[i]
                sql += `f_name="${f_name.trim()}" and `
                sql2 += `f_name="${f_name.trim()}" and `
            }
            else if (symbol[i] == '~') {
                l_name = arr2[i]
                sql += `l_name="${l_name.trim()}" and `
                sql2 += `l_name="${l_name.trim()}" and `
            }
            else if (symbol[i] == '&') {
                s_number = arr2[i]
                sql += `s_number="${s_number.trim()}" and `
                sql2 += `s_number="${s_number.trim()}" and `
            }
            else if (symbol[i] == '!') {
                email = arr2[i]
                sql += `email="${email.trim()}" and `
                sql2 += `email="${email.trim()}" and `
            }
            else if (symbol[i] == '%') {
                city = arr2[i]
                sql += `city="${city.trim()}" and `
                sql2 += `city="${city.trim()}" and `
            }
        }
        sql = sql.slice(0, (sql.length - 5))
        sql2 = sql2.slice(0, (sql2.length - 5))
        //var num='0'
        sql += `) and (is_delete=0 or is_delete is null) limit ${offset}, ${limit}`
        sql2 += `) and (is_delete=0 or is_delete is null)`
        console.log(sql)
        console.log("count :- " + sql2)

    } else {

        console.log(arr2)
        for (var i = 0; i < symbol.length; i++) {
            if (symbol[i] == '^') {
                f_name = arr2[i]
                sql += `f_name="${f_name.trim()}" `
                sql += 'or '

                sql2 += `f_name="${f_name.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '~') {
                l_name = arr2[i]
                sql += `l_name="${l_name.trim()}" `
                sql += 'or '

                sql2 += `l_name="${l_name.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '&') {
                s_number = arr2[i]
                sql += `s_number="${s_number.trim()}" `
                sql += 'or '

                sql2 += `s_number="${s_number.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '!') {
                email = arr2[i]
                sql += `email="${email.trim()}" `
                sql += 'or '

                sql2 += `email="${email.trim()}" `
                sql2 += 'or '
            }
            else if (symbol[i] == '%') {
                city = arr2[i]
                sql += `city="${city.trim()}" `
                sql += 'or '

                sql2 += `city="${city.trim()}" `
                sql2 += 'or '
            }
        }
        sql = sql.slice(0, (sql.length - 3))
        sql2 = sql2.slice(0, (sql2.length - 3))
        sql += `) and (is_delete=0 or is_delete is null) limit ${offset}, ${limit}`
        sql2 += `) and (is_delete=0 or is_delete is null)`
        console.log(sql)
    }
    console.log(sql2)
    var data = []
    connection.query(sql, (err, data) => {
        if (err) throw err;

        connection.query(sql2, (err, result) => {
            console.log(result)
            //data1=result
            let totalPages = Math.ceil(result[0].count / limit)
            let pages = []
            for (var i = 1; i <= totalPages; i++) {
                pages.push(i)
            }
            if (ajax == 'false')
                res.render("welcome", { data, pag, pages })
            else
                res.json(data)
        })
    })
})

app.post("/saveBasic", async (req, res) => {
    //console.log(req.body.f_name)
    //Basic info
    var jwttoken = req.cookies.jwtToken
    if (jwttoken == '' || jwttoken==null) {
        res.send(`login First <a href="http://localhost:8014/login">login</a>`)
    }
    var updateBasic = await query(`update basic_detail set f_name='${req.body.f_name}',l_name='${req.body.l_name}',designation='${req.body.designation}',address1='${req.body.address1}',address2='${req.body.address2}',email='${req.body.email}',s_number='${req.body.s_number}',city='${req.body.city}',gender='${req.body.gender}',zipcode='${req.body.zipcode}',state='${req.body.state}' where id=${req.body.id}`)


    //eduction upate or insert 


    var coursename = req.body.courseName;
    var passingyear = req.body.pyear
    var university = req.body.buname
    var percentage = req.body.percentage
    var deleteCheck = await query(`delete from eduction_detail where basic_deatil_id='${req.body.id}'`)
    if (typeof (coursename, percentage, university, passingyear) == "string") {
        sqlEduction = `insert into eduction_detail(basic_deatil_id,cource_name,univercity,passing_year,percentage) values('${req.body.id}','${coursename}','${university}','${passingyear}','${percentage}')`;
        connection.query(sqlEduction, (err, result) => {
            if (err) throw err

            console.log("data inserted")
        })
    } else {
        for (i = 0; i < coursename.length; i++) {

            sqlEduction = `insert into eduction_detail(basic_deatil_id,cource_name,univercity,passing_year,percentage) values('${req.body.id}','${coursename[i]}','${university[i]}','${passingyear[i]}','${percentage[i]}')`;
            connection.query(sqlEduction, (err, result) => {
                if (err) throw err

                console.log("data inserted")
            })
        }
    }

    console.log("coursenamelength:- " + req.body.courseName.length)

    //work update or insert


    var comapnyname, designation1, start, end
    comapnyname = req.body.cName
    designation1 = req.body.designation1
    start = req.body.startDate
    end = req.body.endDate
    var deleteCheck = await query(`delete from work_expericence where basic_id='${req.body.id}'`)
    if (typeof (comapnyname, designation1, start, end) == "string") {
        sqlWork = `insert into work_expericence(basic_id,company_name,designation,start_date,end_date) values('${req.body.id}','${comapnyname}','${designation1}','${start}','${end}')`;
        connection.query(sqlWork, (err, result) => {
            if (err) throw err

            console.log("data inserted")
        })
    } else {
        for (i = 0; i < comapnyname.length; i++) {

            sqlWork = `insert into work_expericence(basic_id,company_name,designation,start_date,end_date) values('${req.body.id}','${comapnyname[i]}','${designation1[i]}','${start[i]}','${end[i]}')`;
            connection.query(sqlWork, (err, result) => {
                if (err) throw err

                console.log("data inserted")
            })
        }
    }

    // var workLength = req.body.workLength
    // var updateWork, insertWork
    // if (typeof (req.body.cName) == "string") {
    //     if (typeof req.body.work_id != 'undefined') {
    //         updateEduction = await query(`update work_expericence set  company_name='${req.body.cName}',designation='${req.body.designation1}',start_date='${req.body.startDate}',end_date='${req.body.endDate}' where id='${req.body.work_id}'`)
    //     } else {
    //         insertEduction = await query(`insert into work_expericence(company_name,designation,start_date,end_date,basic_id) values('${req.body.cName}','${req.body.designation1}','${req.body.startDate}','${req.body.endDate}','${req.body.id}')`)
    //     }
    // } else {
    //     for (var i = 0; i < req.body.cName.length; i++) {
    //         console.log("id Work :- " + req.body.work_id[i])
    //         if (typeof req.body.work_id[i] != 'undefined') {
    //             updateEduction = await query(`update work_expericence set  company_name='${req.body.cName[i]}',designation='${req.body.designation1[i]}' where id='${req.body.work_id[i]}'`)
    //         } else {
    //             insertEduction = await query(`insert into work_expericence(company_name,designation,start_date,end_date,basic_id) values('${req.body.cName[i]}','${req.body.designation1[i]}','${req.body.startDate[i]}','${req.body.endDate[i]}','${req.body.id}')`)
    //         }
    //     }
    // }
    // console.log("work id:- " + req.body.work_id)
    // console.log("sDate:- " + req.body.startDate)
    // console.log("coursenamelength:- " + req.body.cName.length)

    //refrence
    var refrenceLength = req.body.refrenceLength
    var updateRefrence, insertRefrence
    for (var i = 0; i < req.body.name.length; i++) {
        //console.log("id Work :- " + req.body.work_id[i])
        if (typeof req.body.work_id[i] != 'undefined') {
            updateEduction = await query(`update refrences set  name='${req.body.name[i]}',r_number='${req.body.number[i]}',relation='${req.body.relation[i]}' where id='${req.body.refrence_id[i]}'`)
        }
    }
    console.log("refrencelength:- " + req.body.name.length)

    //prefrence
    var updatePrefrence

    //console.log("id Work :- " + req.body.prefrence_id)

    if (typeof req.body.prefrence_id != 'undefined') {
        updatePrefrence = await query(`update prefrences set  location='${req.body.city[1]}',notice_period='${req.body.notice_period}',expected_ctc='${req.body.expected}',current_ctc='${req.body.current}',department='${req.body.department}' where id='${req.body.prefrence_id}'`)
    }
    //console.log("prefrencelength:- " + req.body.city[1])



    //console.log(req.body.language)

    var language = ""
    var read = req.body.read
    var write = req.body.write
    var speak = req.body.speak
    // console.log(typeof (read))
    // console.log(typeof (write))
    // console.log(typeof (speak))
    // console.log(speak)
    // console.log(read)
    // console.log(write)

    var deleteCheck = await query(`delete from language where ba_id='${req.body.id}'`)
    if (typeof (req.body.language) == 'object') {
        language = `insert into language(ba_id,language_name,read1,write1,speak1) values`;
        for (let i = 0; i < req.body.language.length; i++) {
            language += `('${req.body.id}','${req.body.language[i]}','${read.includes(req.body.language[i]) ?
                'yes' : 'no'}','${write.includes(req.body.language[i]) ? 'yes' : 'no'}',
                '${speak.includes(req.body.language[i]) ? 'yes' : 'no'}'),`;
        }
        language = language.slice(0, language.length - 1);
    } else {
        language = `insert into language(ba_id,language_name,read1,write1,speak1) values
        ('${req.body.id}','${req.body.language}','${read == req.body.language ? 'yes' : 'no'}',
        '${write == req.body.language ? 'yes' : 'no'}','${speak == req.body.language ? 'yes' : 'no'}')`;
    }
    var insertlanguage = await query(language)



    var technology = req.body.technology || 0
    var abcd = []
    var deleteTech = await query(`delete from technology where bas_id='${req.body.id}'`)
    for (var i = 0; i < technology.length; i++) {
        abcd.push(req.body['rating' + technology[i]])
    }
    for (var i = 0; i < abcd.length; i++) {
        if (typeof (technology) == "string") {
            sql = `insert into technology(bas_id,technology_name,rating) values('${req.body.id}','${technology}','${abcd[i]}')`
        } else {
            sql = `insert into technology(bas_id,technology_name,rating) values('${req.body.id}','${technology[i]}','${abcd[i]}')`
        }
        connection.query(sql, (err, result) => {
            if (err) throw err

            console.log("inserted")
        })
    }

    res.send("data inserted")
})