import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';

VoidCallback? onPressed;

Widget myButtonAdd(BuildContext context) {
  return FloatingActionButton(
    onPressed: onPressed, // Use a propriedade onPressed da classe
    backgroundColor: Appcolors.surfaceAlternative,
    foregroundColor: Appcolors.foreground,
    elevation: 6,
    shape: const CircleBorder(),
    child: const Text(
      '+',
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    ),
  );
}
