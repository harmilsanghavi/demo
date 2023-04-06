const jwt = require("jsonwebtoken");

const tokan = jwt.sign({name:"abcd"},"harmil");
console.log(tokan);