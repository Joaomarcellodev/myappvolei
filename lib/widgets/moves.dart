import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/my_button_add.dart';

Widget moves(String label, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Row(
      children: [
        myButtonAdd(context),
        const SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Appcolors.foreground,
            fontFamily: 'ConcertOne',
            fontSize: 30,
          ),
        ),
      ],
    ),
  );
}