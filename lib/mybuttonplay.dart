import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/game.dart';

Widget myButtonPlay(BuildContext context) {
  return SizedBox(
    width: 250, // Defina a largura desejada para o botão
    height: 60, // Defina a altura desejada para o botão
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Game()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.surfaceAlternative,
        foregroundColor: Appcolors.foreground,
        side: BorderSide(color: Appcolors.foreground, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ), // Aplica o mesmo BorderRadius do Container
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 80,
        ), // Ajusta o padding interno
      ),
      child: const Text(
        'Iniciar',
        style: TextStyle(fontFamily: 'ConcertOne', fontSize: 30),
      ),
    ),
  );
}
