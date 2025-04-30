import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

VoidCallback? onPressed;

Widget myButtonAdd(BuildContext context) {
  return FloatingActionButton(
    onPressed: onPressed,
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
