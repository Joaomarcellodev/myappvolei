import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/mybuttonadd.dart';
import 'package:myappvolei/mybuttonplay.dart';
import 'package:myappvolei/overall_score.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
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

  Widget _buildTeam(String letter, String name) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Appcolors.border,
          ),
          child: Center(
            child: Text(
              letter,
              style: TextStyle(
                color: Appcolors.surfaceAlternative,
                fontFamily: 'ConcertOne',
                fontSize: 28,
              ),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: Appcolors.surfaceAlternative,
            fontFamily: "ConcertOne",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildStatRow(String label) {
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

  Widget _buildActionRow(String label) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          // Cabeçalho com times
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTeam('A', 'Ziraldos'),
              const SizedBox(width: 70),
              _buildTeam('B', 'Autoconvidados'),
            ],
          ),

          // Corpo principal
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Coluna esquerda (estatísticas)
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStatRow('Ace'),
                        const SizedBox(height: 10),
                        _buildStatRow('Ataque'),
                        const SizedBox(height: 10),
                        _buildStatRow('Bloqueio'),
                        const SizedBox(height: 10),
                        _buildStatRow('Erro'),
                      ],
                    ),
                  ),
                ),

                // Coluna central com placares e tempo/botão
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      // Containers de placar
                      Transform.translate(
                        offset: const Offset(0, 1),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolors.foreground,
                                    width: 3,
                                  ),
                                  color: Colors.deepOrange,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('image/ball.png', height: 60),
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
                              ),
                              Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolors.foreground,
                                    width: 3,
                                  ),
                                  color: Colors.deepOrange,
                                ),
                                child: Column(
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
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Tempo e botão
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              "Tempo de jogo: 1:14'00''",
                              style: TextStyle(
                                color: Appcolors.foreground,
                                fontFamily: 'ConcertOne',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 3),
                            myButtonPlay(
                              context,
                              name: 'Placar Geral',
                              onPressed: () => OverallScore.show(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Coluna direita (ações)
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildActionRow('Ace'),
                        const SizedBox(height: 10),
                        _buildActionRow('Ataque'),
                        const SizedBox(height: 10),
                        _buildActionRow('Bloqueio'),
                        const SizedBox(height: 10),
                        _buildActionRow('Erro'),
                      ],
                    ),
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
