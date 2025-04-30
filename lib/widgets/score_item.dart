import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

Widget scoreItem(
    String first,
    String second, {
    bool isYellow = false,
    bool isTeamB = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Center(
        child: SizedBox(
          width: 140, // Reduzi a largura
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                isTeamB
                    ? [
                      Text(
                        first,
                        style: TextStyle(
                          color:
                              isYellow
                                  ? Appcolors.yellow
                                  : Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        second,
                        style: TextStyle(
                          color: Appcolors.foreground,
                          fontFamily: 'ConcertOne',
                          fontSize: 16,
                        ),
                      ),
                    ]
                    : [
                      Text(
                        first,
                        style: TextStyle(
                          color: Appcolors.foreground,
                          fontFamily: 'ConcertOne',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        second,
                        style: TextStyle(
                          color:
                              isYellow
                                  ? Appcolors.yellow
                                  : Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 16,
                        ),
                      ),
                    ],
          ),
        ),
      ),
    );
  }