import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myappvolei/widgets/app_colors.dart';

class OverrallScore extends StatefulWidget {
  const OverrallScore({super.key});

  @override
  State<OverrallScore> createState() => _OverrallScoreState();
}

class _OverrallScoreState extends State<OverrallScore> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Placar Geral",
          style: TextStyle(
            color: Appcolors.surfaceAlternative,
            fontFamily: "ConcertOne",
            fontSize: 36,
          ),
        ),
        backgroundColor: Appcolors.background,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Appcolors.background,
      body: Column(
        children: [
          // Corpo principal
          Expanded(
            child: Row(
              children: [
                // Coluna esquerda (ícones centralizados)
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: Appcolors.foreground,
                          size: 40,
                        ),
                        SizedBox(height: 20),
                        Icon(
                          Icons.bar_chart,
                          color: Appcolors.foreground,
                          size: 40,
                        ),
                        SizedBox(height: 20),
                        Icon(
                          Icons.bar_chart,
                          color: Appcolors.foreground,
                          size: 40,
                        ),
                        SizedBox(height: 20),
                        Icon(
                          Icons.bar_chart,
                          color: Appcolors.foreground,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),

                // Coluna central (placar laranja)
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Appcolors.foreground,
                          width: 3,
                        ),
                        color: Colors.deepOrange,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                '12',
                                style: TextStyle(
                                  color: Appcolors.border,
                                  fontFamily: 'ConcertOne',
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 70),
                              Text(
                                '22',
                                style: TextStyle(
                                  color: Appcolors.border,
                                  fontFamily: 'ConcertOne',
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Coluna direita (tempos centralizados)
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0:24.90',
                          style: TextStyle(
                            color: Appcolors.foreground,
                            fontSize: 24,
                            fontFamily: 'ConcertOne',
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '0:14.23',
                          style: TextStyle(
                            color: Appcolors.foreground,
                            fontSize: 24,
                            fontFamily: 'ConcertOne',
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '0:35.04',
                          style: TextStyle(
                            color: Appcolors.foreground,
                            fontSize: 24,
                            fontFamily: 'ConcertOne',
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '0:11.29',
                          style: TextStyle(
                            color: Appcolors.foreground,
                            fontSize: 24,
                            fontFamily: 'ConcertOne',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Linha inferior (informações adicionais)
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ziraldos",
                  style: TextStyle(color: Appcolors.foreground, fontSize: 18),
                ),
                SizedBox(width: 4),
                Text(
                  '3',
                  style: TextStyle(
                    color: Appcolors.foreground,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "Sicranos",
                  style: TextStyle(color: Appcolors.foreground, fontSize: 18),
                ),
                SizedBox(width: 4),
                Text(
                  '1',
                  style: TextStyle(
                    color: Appcolors.foreground,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "Autoconvidados",
                  style: TextStyle(color: Appcolors.foreground, fontSize: 18),
                ),
                SizedBox(width: 4),
                Text(
                  '8',
                  style: TextStyle(
                    color: Appcolors.foreground,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
