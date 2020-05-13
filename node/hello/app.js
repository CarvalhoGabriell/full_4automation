
import express from 'express';

const app = express();

app.get("/hello",(req, res) => {
    res.status(200).json({message:'Hello Word com express no Front-End'})

})

app.listen(3000);

module.exports = app;






/* ARROW FUNCTION, como utilizar:

var soma = function(v1, v2) {
    return v1 + v2;
}

let soma = (v1, v2) => {
    return v1 + v2
}

*/