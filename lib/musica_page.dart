import 'package:flutter/material.dart';
import 'package:musica/musica.dart';

class MusicaPage extends StatelessWidget {

  const MusicaPage({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    final musica = ModalRoute.of(context)?.settings.arguments as Musica;

    return Scaffold(
      appBar: AppBar(
        title: Text(musica.nome),
      ),
      body: Center(
        child: Column(
          children: [
            Text(musica.nome),
            Text(musica.artista),
            Text(musica.tempo),
          ],
        ),
      ),
    );
  }
}