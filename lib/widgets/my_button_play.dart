import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/pages/game.dart';

class Mybuttonplay {
  final String name;
  final Color textColor; 

  const Mybuttonplay({
    required this.name,
    this.textColor = Appcolors.foreground,
  });
}

Widget myButtonPlay(
  BuildContext context, {
  required String name,
  Color textColor = Appcolors.foreground,
  VoidCallback? onPressed,
}) {
  return SizedBox(
    height: 60,
    child: ElevatedButton(
      onPressed:
          onPressed ??
          () {
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: 'ConcertOne',
          fontSize: 28,
          color: textColor,
        ),
      ),
    ),
  );
}
