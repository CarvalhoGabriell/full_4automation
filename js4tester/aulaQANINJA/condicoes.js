

var idade = prompt("Qual sua idade?");

if (idade >= 21) {
    console.log("Posso tirar minha CNH e comprar bebidas alcoolicas")
} else if (idade >= 16) {
    console.log("Você ainda tem que pedir, mas da pra quebrar o galho")
} else {
    console.log("Não vai poder fazer nada, melhor nem pedir!! #ficadica!!!")
}



var ingresso = prompt("Qual seu tipo de ingresso?");

switch (ingresso) {
    case "vip":
        console.log("Permissão a area vip.")
        break;
    case "premium":
        console.log("Permissão a area vip e direito a Open Bar e Comida.")
        break;
    case "comum":
        console.log("permissão a pista normal.")
        break;
    default:
        console.log("Tipo de ingresso inválido")
        break
}


var idade = 12
console.log(`Sua idade é ${idade} anos`)

if (idade >= 18) {
    console.log('Voto obrigatório')
} else if (idade >= 16) {
    console.log('Seu voto é opcional')
}else {
    console.log('Não tem direito ao voto ainda...')
}



var agora = new Date()
var hora = agora.getHours()

if (hora <= 6) {
    console.log('Good Morning!!!')
    console.log(`Agora são extamente ${hora} horas da manhã no horário de Brasília!`)

} else if (hora >= 13) {
    console.log('Good Afternon!!!')
    console.log(`Agora são extamente ${hora} horas da tarde no horário de Brasília!`)

} else if (hora >=17 && hora <= 24){
    console.log('Good Night!!!')
    console.log(`Agora são extamente ${hora} horas da noite no horário de Brasília!`)

} else {
    console.log('Good Midnight..., You had better go to sleep bro..')
    console.log(`Agora são extamente ${hora} horas da madrugada no horário de Brasília!`)

}


var agora = new Date()
var dia_Sem = agora.getDay()

switch (dia_Sem) {
    case 0:
        console.log('Hoje é domingo')
    break
    
    case 1: 
        console.log('Hoje é segunda-feira')
    break

    case 2:
        console.log('Hoje é terça-feira')
    break

    case 3:
        console.log('Hoje é quarta-feira')
    break

    case 4:
        console.log('Hoje é quinta-feira')
    break

    case 5:
        console.log('Hoje é sexta-feira....SEXXXTOU!!')
    break

    case 6:
        console.log('Hoje é sábado')
    break

    default: 
        console.log('ERRO!!! dia da semana inválido')
}

