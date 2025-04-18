import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  void initState() {
    super.initState();
    // Define a orientação da tela para paisagem (horizontal) ao iniciar a tela
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    // Redefine a orientação para retrato ao sair da tela
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela do Jogo (Horizontal)')),
      body: const Center(
        child: Text(
          'Esta é a tela do jogo em orientação horizontal!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}