

function mediaValores() {
    var n1 = document.getElementById("nota1").value;
    var n2 = document.getElementById("nota2").value;
    var n3 = document.getElementById("nota3").value;
    var n4 = document.getElementById("nota4").value;

    var result = (parseInt(n1) + parseInt(n2) + parseInt(n3) + parseInt(n4)/4);
    
    var divResultado = document.getElementById("resultado");
    divResultado.append(`A média anual do aluno é, ${result} ,Favor consultar a secretária.`);
   
}

