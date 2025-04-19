import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/mybuttonadd.dart';
import 'package:myappvolei/movementsgame.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  void initState() {
    super.initState();
    // Define a orientação da tela para paisagem (horizontal) ao iniciar a tela
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    // Redefine a orientação para retrato ao sair da tela
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
        backgroundColor: Appcolors.background,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // Define a cor do ícone da seta para branco
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ), // Adiciona o ícone de configurações branco
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Appcolors.background,

      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolors.surfaceAlternative,
                    ),
                    child: Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                          color: Appcolors.foreground,
                          fontFamily: "Concert One",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Ziraldos',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: "Concert One",
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolors.surfaceAlternative,
                    ),
                    child: Center(
                      child: Text(
                        "B",
                        style: TextStyle(
                          color: Appcolors.foreground,
                          fontFamily: "Concert One",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Autoconvidados',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: "Concert One",
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Movementsgame(movements: "Ace"),
          SizedBox(height: 10),
          Movementsgame(movements: "Ataque"),
          SizedBox(height: 10),
          Movementsgame(movements: "Bloqueio"),
          SizedBox(height: 10),
          Movementsgame(movements: "Erro"),
        ],
      ),
    );
  }
}
