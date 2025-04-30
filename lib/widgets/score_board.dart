import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

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
            fontSize: 36.0,
            height: -13.0,
          ),
        ),
        SizedBox(width: 10),
        Text(
          score.toString(), 
          style: TextStyle(
            color: Appcolors.surfaceAlternative,
            fontFamily: 'ConcertOne',
            fontSize: 60,
            height: -7.8,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -230),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'jogadores',
              style: TextStyle(
                color: Appcolors.surfaceAlternative,
                fontFamily: 'ConcertOne',
                fontSize: 10.0,
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
