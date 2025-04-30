import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

Widget timeBaseboard(String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0), 
      child: Text(
        time,
        style: TextStyle(
          color: Appcolors.foreground,
          fontSize: 16, 
          fontFamily: 'ConcertOne',
        ),
      ),
    );
  }