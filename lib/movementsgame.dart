import 'package:flutter/material.dart';
import 'package:myappvolei/mybuttonadd.dart';
import 'package:myappvolei/app_colors.dart';

class Movementsgame extends StatelessWidget {
  final String movements;

  const Movementsgame({super.key, required this.movements});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 10),
            myButtonAdd(context),
            SizedBox(width: 10),
            Center(
              child: Text(
                movements,
                style: TextStyle(
                  color: Appcolors.foreground,
                  fontFamily: "ConcertOne",
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
