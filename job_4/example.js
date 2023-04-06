// function convertFiletoPDF(file) {
//     return new Promise(function(resolve, reject) {
//       setTimeout(resolve, 400, "Done");
//     });
//   }
  
//   async function myfunc(file){
//     let res = await convertFiletoPDF(file);
//     return res;
//   }
  
//   let res = myfunc("some file");
//   console.log(res);

// function convertFiletoPDF(file) {
//     return new Promise(function(resolve, reject) {
//       setTimeout(resolve, 400, "Done");
//     });
//   }
  
//   async function myfunc(file){
//     let res = await convertFiletoPDF(file);
//     return res;
//   }
  
//   (async() => {
//     try {
//       let res = await myfunc("some file");
//       console.log(res);
//     } catch (e) {
//       // Deal with the fact there was an error
//     }
//   })();

// function convertFiletoPDF(file) {
//     return new Promise(function(resolve, reject) {
//       setTimeout(resolve, 400, "Done");
//     });
//   }
  
//   async function myfunc(file){
//     let res = await convertFiletoPDF(file);
//     return res;
//   }
  
//   myfunc("some file")
//     .then(res => {
//       console.log(res);
//     })
//     .catch(e => {
//       // Deal with the fact there was an error
//     });

import express, { json } from 'express';
import { createConnection } from "mysql2";
import { urlencoded } from "body-parser";
var app = express()

app.use(json());

app.set('view engine', 'ejs')

app.use(urlencoded({ extended: false }))


const connection = createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',

    database: 'job_application'
});
app.listen(8001);
app.get("/",(req,res)=>{
    // connection.query(`select * from basic_detail`,(err,data)=>{
    //     if(err) throw err

        
    // })
    fetch(`select * from basic_detail`)
    .then(function(res) {
    // handle the response
    console.log(res)
    })
    .catch(function(err) {
    // handle the error
    console.log(err);
    });
})