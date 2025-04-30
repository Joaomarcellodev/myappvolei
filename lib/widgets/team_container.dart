import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/team_container_avatar.dart';

Widget teamContainer({
    required String team,
    required List<Widget> items,
  }) {
    return Container(
      width: 180, // Reduzi a largura
      constraints: const BoxConstraints(
        minHeight: 180,
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Appcolors.foreground, width: 3),
        color: Colors.deepOrange,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: teamContainerAvatar(team),
          ),
          const SizedBox(height: 16),
          ...items,
        ],
      ),
    );
  }