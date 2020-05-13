


// var playlist = {
//     title: 'My own playlist, is the better!!!',
//     release: 2020,
//     showInfo: function() {
//         console.log(`Titulo da playlist: ${this.title}, Criado em: ${this.release}`)
//     }
// }

// playlist.showInfo();
// console.log(playlist.title);
// console.log(playlist.release);

var playlist = new Object();

playlist.title = 'My own playlist, is the better!!!';
playlist.release = 2020;
playlist.showInfo = function () {
    console.log(`Titulo da playlist: ${this.title}, Criado em: ${this.release}`)
}

playlist.showInfo();
console.log(playlist.title);
console.log(playlist.release);

playlist.tracks = ['Imagine Dragons', 'Travis Scott', 'The Roots', 'Funkão Pesado',]

playlist.showTracks = function () {
    this.tracks.forEach(function (value, key) {
        console.log(value)
    })
}

playlist.showTracks();