import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

Widget teamContainerAvatar(String letter, [String? name]) {
  return Column(
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Appcolors.border,
        ),
        child: Center(
          child: Text(
            letter,
            style: TextStyle(
              color: Appcolors.surfaceAlternative,
              fontFamily: 'ConcertOne',
              fontSize: 28,
            ),
          ),
        ),
      ),
      if (name != null) // Só exibe o Text se name não for nulo
        Text(
          name,
          style: TextStyle(
            color: Appcolors.surfaceAlternative,
            fontFamily: "ConcertOne",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
    ],
  );
}
