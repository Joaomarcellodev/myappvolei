import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';

class Scoreboard extends StatelessWidget {
  final String nameTime;
  final int score;

  const Scoreboard({super.key, required this.nameTime, required this.score});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          nameTime,
          style: TextStyle(
            color: Appcolors.yellow,
            fontFamily: 'ConcertOne',
            fontSize: 40.0,
            height: -15,
          ),
        ),
        SizedBox(width: 20),
        Text(
          score.toString(), // Converte o int para String
          style: TextStyle(
            color: Appcolors.surfaceAlternative,
            fontFamily: 'ConcertOne',
            fontSize: 90,
            height: -6.6,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -290),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'jogadores',
              style: TextStyle(
                color: Appcolors.surfaceAlternative,
                fontFamily: 'ConcertOne',
                fontSize: 12.0,
              ),
            ),
          ),
        ),
        SizedBox(width: 30),
      ],
    );
  }
}
