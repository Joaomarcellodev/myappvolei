import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/moves.dart';
import 'package:myappvolei/widgets/moves_reverse.dart';
import 'package:myappvolei/widgets/my_button_play.dart';
import 'package:myappvolei/pages/result.dart';
import 'package:myappvolei/widgets/team_container_avatar.dart';

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
              teamContainerAvatar('A', 'Ziraldos'),
              const SizedBox(width: 70),
              teamContainerAvatar('B', 'Autoconvidados'),
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
                        moves('Ace', context),
                        const SizedBox(height: 10),
                        moves('Ataque', context),
                        const SizedBox(height: 10),
                        moves('Bloqueio', context),
                        const SizedBox(height: 10),
                        moves('Erro', context),
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
                                    Image.asset('image/ball.png', height: 70),
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
                              onPressed: () => Result.show(context),
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
                        movesReverse('Ace', context),
                        const SizedBox(height: 10),
                        movesReverse('Ataque', context),
                        const SizedBox(height: 10),
                        movesReverse('Bloqueio', context),
                        const SizedBox(height: 10),
                        movesReverse('Erro', context),
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
