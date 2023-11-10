import 'package:flutter/material.dart';
import 'package:musica/musica.dart';

class MusicaWidget extends StatelessWidget {
  final Musica musica;

  const MusicaWidget({
    super.key, 
    required this.musica
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
       "/musica",
        arguments: musica,
        ),
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(musica.nome.toString()),
            Expanded(
              child: Column(
                children: [
                  Text(musica.nome),
                  Text(musica.artista),
                ],
              ),
            ),
            Text(musica.tempo),
          ],
        ),
      ),
    );
  }
}
