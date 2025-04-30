import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/my_button_add.dart';

Widget movesReverse(String label, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        label,
        style: TextStyle(
          color: Appcolors.foreground,
          fontFamily: 'ConcertOne',
          fontSize: 30,
        ),
      ),
      const SizedBox(width: 10),
      myButtonAdd(context),
    ],
  );
}
