import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/game.dart';

class Mybuttonplay {
  final String name;

  const Mybuttonplay({required this.name});
}

Widget myButtonPlay(BuildContext context, {required String name}) {
  return SizedBox(
    width: 250,
    height: 60,
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80), //
      ),
      child: Text(
        name,
        style: const TextStyle(fontFamily: 'ConcertOne', fontSize: 20),
      ),
    ),
  );
}
