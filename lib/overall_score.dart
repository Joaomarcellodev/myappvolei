import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/mybuttonplay.dart';

class OverallScore {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(20),
          child: SizedBox(
            width: 600,
            height: 350,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(215, 183, 231, 238),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Appcolors.foreground, width: 5),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'FIM DE SET',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: 'ConcertOne',
                      fontSize: 33,
                    ),
                  ),

                  Stack(
                    children: [
                      Center(
                        child: Text(
                          'Autoconvidados',
                          style: TextStyle(
                            color: Appcolors.surfaceAlternative,
                            fontFamily: 'ConcertOne',
                            fontSize: 70,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 60,
                        bottom: -6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            'VENCEU',
                            style: TextStyle(
                              color: Appcolors.surfaceAlternative,
                              fontFamily: 'ConcertOne',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 70),

                  // Botões de ação
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myButtonPlay(context, name: 'Terminar'),
                      myButtonPlay(context, name: 'Novo Set'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
