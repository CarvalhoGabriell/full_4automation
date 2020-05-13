// OPERADORES

/* A ordem para uma expressão que contem operadores LOGICOS, RELACIONAIS E ARITIMÉTICOS é:

1° ARITIMÉTICOS
2° RELACIONAIS
3° LÓGICOS
4° TERNÁRIO

*/
// Aritimeticos

//5+10 => 15

console.log(2 + 10);
console.log(2 - 20);
console.log(2 * 10);
console.log(150 / 5);
console.log(2 ** 5);

// Comparação

console.log(255 == 256);
console.log(1 == 1);
console.log(2 == "2"); // 

// Diferentes

console.log(85 != 80);
console.log(44 != 44);

// Igual e estrito

console.log("5" === "5");
console.log(2 === "2");  

// Operadores Logicos

n1 = 15 
n2 = 25

n1 >= 20 || n2 == 25   // Nesse caso os dois pipelines servem para dizer o "ou" na linguagem escrita.

n1 <= 12 && n2 * 5 == 60  // Nesse caso ps dois && servem para dizer o " e " na linguagem escrita.

// Operadores Ternário - TESTE ? TRUE : FALSE
/*

No TESTE acontece um teste normal de logica depois da "?" vem oq acontece se a operação for VERDADEIRA,
e depois dos ":" vem oq acontece se a operação der FALSA.

*/

var media = 6.5

media >= 6 ? 'APROVADO': 'REPROVADO'


var car = 25.000 

var res = car <= 29.000 ? 'APROVADO' : 'REPROVADO'

