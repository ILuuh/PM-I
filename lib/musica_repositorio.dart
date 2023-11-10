import 'package:musica/musica.dart';

class MusicaRepositorio {

  static List<Musica> list() {
    return <Musica>[
      Musica(nome: "Track 1", artista: "Artist 1", tempo: "3:45", numero: 1),
      Musica(nome: "Track 2", artista: "Artist 2", tempo: "4:45", numero: 2),
      Musica(nome: "Track 3", artista: "Artist 3", tempo: "5:45", numero: 3),
      Musica(nome: "Track 4", artista: "Artist 4", tempo: "6:45", numero: 4),
      Musica(nome: "Track 5", artista: "Artist 5", tempo: "7:45", numero: 5),
    ];
  }

}