import 'package:flutter/material.dart';
import 'package:musica/musica_repositorio.dart';
import 'package:musica/musica_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final musicas = MusicaRepositorio.list();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: musicas.length,
        itemBuilder: (context, index) => MusicaWidget(musica: musicas[index]),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}