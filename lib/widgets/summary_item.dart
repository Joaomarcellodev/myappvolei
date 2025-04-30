import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';

Widget summaryItem(String label, [String? value]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Appcolors.foreground,
            fontSize: 24, 
            fontFamily: 'ConcertOne',
          ),
        ),
        if (value != null) ...[
          const SizedBox(width: 4),
          Text(
            value,
            style: TextStyle(
              color: Appcolors.surfaceAlternative,
              fontSize: 24,
              fontFamily: 'ConcertOne',
            ),
          ),
        ],
      ],
    );
  }

