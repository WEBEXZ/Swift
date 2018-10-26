import UIKit

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

var cancionUno = Song(name: "x", artist: "y");
var cancionDos = Song(name: "u", artist: "v");

var peliculaUno = Movie(name: "a", director: "b")
var peliculaDos = Movie(name: "c", director: "d")

struct Cancion {
    var name: String
    var author: String
}

struct Pelicula {
    var name: String
    var director: String
}

var cancion = Cancion.init(name: "x", author: "y")
print(cancion.author)
