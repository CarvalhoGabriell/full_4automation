
function carregar() {

    var msg = document.getElementById('msg')
    var foto = document.getElementById('imagem')
    var data =  new Date()
    var hora = data.getHours()
    
    if (hora >= 0 && hora < 12) {
    
        foto.src = 'manha.png'
        document.body.style.background = '#f2ee6d'
    } else if (hora >= 12 && hora < 18) {

        foto.src = 'tarde.png'
        document.body.style.background = '#f5601b'

    } else {
        foto.src = 'noite.png'
        document.body.style.background = '#431f8f'

    }
    msg.innerText = `Agora são ${hora} horas. `
}