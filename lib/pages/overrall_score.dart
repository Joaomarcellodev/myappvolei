import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/score_item.dart';
import 'package:myappvolei/widgets/summary_item.dart';
import 'package:myappvolei/widgets/team_container.dart';
import 'package:myappvolei/widgets/time_baseboard.dart';

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
            fontSize: 32,
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ), // Reduzi o padding horizontal
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Coluna esquerda (ícones)
                        Transform.translate(
                          offset: const Offset(10, 20),
                          child: SizedBox(
                            width: 60, // Reduzi a largura
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                4,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Icon(
                                    Icons.bar_chart,
                                    color: Appcolors.foreground,
                                    size: 26,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Coluna central (placares)
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  teamContainer(
                                    team: 'A',
                                    items: [
                                      scoreItem(
                                        'Ziraldos',
                                        '25',
                                        isTeamB: false,
                                      ),
                                      scoreItem(
                                        'Ziraldos',
                                        '25',
                                        isTeamB: false,
                                      ),
                                      scoreItem(
                                        'Ziraldos',
                                        '10',
                                        isYellow: true,
                                        isTeamB: false,
                                      ),
                                      scoreItem(
                                        'Sparrings',
                                        '10',
                                        isTeamB: false,
                                      ),
                                    ],
                                  ),

                                  teamContainer(
                                    team: 'B',
                                    items: [
                                      scoreItem(
                                        '10',
                                        'Sparrings',
                                        isYellow: true,
                                        isTeamB: true,
                                      ),
                                      scoreItem(
                                        '10',
                                        'Sicranos',
                                        isYellow: true,
                                        isTeamB: true,
                                      ),
                                      scoreItem(
                                        '25',
                                        'Autoconvidados',
                                        isTeamB: true,
                                      ),
                                      scoreItem(
                                        '10',
                                        'Autoconvidados',
                                        isYellow: true,
                                        isTeamB: true,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Coluna direita (tempos)
                        Transform.translate(
                          offset: const Offset(0, 4),
                          child: SizedBox(
                            width: 100, // Reduzi a largura
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ), // Reduzi o espaçamento
                                timeBaseboard('0:24.90'),
                                timeBaseboard('0:14.23'),
                                timeBaseboard('0:35.04'),
                                timeBaseboard('0:11.29'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Rodapé
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Appcolors.surface,
              border: Border.all(color: Appcolors.foreground, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ), // Adicionei padding interno
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  summaryItem("Ziraldos: ", '3'),
                  summaryItem("Sieranos: ", '1'),
                  summaryItem("Autoconvidados: ", '8'),
                  summaryItem("Sparrings: "),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
