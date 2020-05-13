

function verificar(){
    var data = new Date()
    var ano = data.getUTCFullYear()
    var form_ano = document.getElementById('txtano')
    var text = document.querySelector('div#text')
    var res = document.querySelector('div#res')

    if (form_ano.value.length == 0 || Number(form_ano.value) > ano) {
       window.alert('ERRO verifique os dados e tente novamente')
    } else {
        var fsex = document.getElementsByName('radsex')
        var idade = ano - Number(form_ano.value)
        var genero = ''
        var img = document.createElement('img')
        img.setAttribute('id', 'foto')
        
        
        
        if (fsex[0].checked) {
            genero = 'Homem'
            if (idade >=0 && idade < 12) {
                //criança
                img.setAttribute('src', 'menino.jpg')
                genero = 'Criança'

            
            } else if (idade <= 23) {
                //jovem
                img.setAttribute('src', 'jovem.jpg')
                genero = 'Adolecente'

            } else if (idade < 50) {
                //adulto
                img.setAttribute('src', 'homem-adulto.jpg')
                genero = 'Adulto'
            } else {
                //idoso
                img.setAttribute('src', 'idoso.png')
                genero = 'Idoso'
            }
        } else {
            genero = 'Mulher'
            if (idade >= 0 && idade < 12) {
                //criança
                img.setAttribute('src', 'menina.png')
                genero = 'Criança'

            } else if (idade <= 23) {
                //jovem
                img.setAttribute('src', 'jovem-f.png')
                genero = 'Adolecente'

            } else if (idade < 50) {
                //adulto
                img.setAttribute('src', 'mulher-adulta.png')
                genero = 'Adulta'

            } else {
                //idoso
                img.setAttribute('src', 'idosa.jpg')
                genero = 'Idosa'

            }
        }
        text.innerHTML = `Detectamos um ${genero} com ${idade} anos`
        res.appendChild(img)
    }
}

