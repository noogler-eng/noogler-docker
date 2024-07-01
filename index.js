const express = require("express");
const dotenv = require("dotenv");
dotenv.config();

const app = express();
app.use(express.json());

app.get("/", (req, res)=>{
    res.status(200).json({
        success: true,
        msg: " GET route on '/' "
    })
})

app.get("/greet", (req, res)=>{
    res.status(200).send("<p><i>hii, there<i></p>");
})

// @default 3000
const port = process.env.PORT || 3000;
app.listen(port, ()=>{
    console.log("listening on port: ",port);
})