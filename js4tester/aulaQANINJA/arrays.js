// ARRAYS 

var avenger = new Array();

var avenger = ['Homem de Ferro', 'Capitão América', 'Viuva Negra', 'Gavião Arqueiro']
    console.log(avenger)

avenger.push('Hulk')
avenger.push('Thor')

console.log(avenger)

avenger.push('Doctor Strange')
avenger.push('Black Panther')

console.log(avenger)

//avenger.pop();       // excluir o ultimo registro
//avenger.shift();    // excluir o primeiro registro
avenger.push('Homem de Ferro')

console.log(avenger)

var indice = avenger.indexOf('Thor')
avenger.splice(indice) // serve para remover um item 

avenger.push('Ant Man')
avenger.push('Thor')

//console.log(indice)
console.log(avenger)

var newAvengers = ['Spider Man', 'Kamalakan', 'Capita Marvel']
var ggalaxy = ['Star Lord', 'Drax', 'Gamora', 'Groot', 'Mantis', 'Rocket']

var result = avenger.concat(newAvengers, ggalaxy)

console.log(result)