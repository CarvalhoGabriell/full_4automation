// LOOPING OU LAÇOS

// FOR é feito de acordo com declarações

// for (var x = 0; x < 100; x++) {
//     console.log(`Repetindo o looping porque ${x} é menor que 100`)
// }


// WHILE  é feito através de uma condição e até essa condição ser feita o looping será realizado

// var y = 0;

// while (y < 50) {
//     console.log(`Repetindo o looping porque ${y} é menor que 50`)
//     y++;
// } 

// FOR EACH

var avengers = ['IronMan', 'SpiderMan', 'Doctor Strange', 'Capitao América', 'Black Panther', 'Thanos', 'AntMan']

avengers.forEach(function (value, key) {
    console.log(`${value} na posição ${key}`)
})