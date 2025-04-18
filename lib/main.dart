import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'App de Volley'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Appcolors.surfaceAlternative,
        foregroundColor: Appcolors.foreground,
        elevation: 6,
        shape: CircleBorder(),
        child: const Text(
          '+',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/ball.png'),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Volley',
                    style: TextStyle(
                      color: Appcolors.foreground,
                      fontFamily: 'ConcertOne',
                      fontSize: 60,
                      height: 0.9,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),

                    child: Text(
                      'do final de semana',
                      style: TextStyle(
                        color: Appcolors.foreground,
                        fontFamily: 'ConcertOne',
                        fontSize: 11,
                        height: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Appcolors.surface,
                  border: Border.all(color: Appcolors.foreground, width: 2),
                ),

                child: Padding(
                  padding: EdgeInsets.only(
                    right: 2,
                    left: 2,
                    top: 90,
                    bottom: 90,
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'TIMES',
                      style: TextStyle(
                        color: Appcolors.foreground,
                        fontFamily: 'ConcertOne',
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sicranos',
                    style: TextStyle(
                      color: Appcolors.yellow,
                      fontFamily: 'ConcertOne',
                      fontSize: 40.0,
                      height: -15,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '3',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: 'ConcertOne',
                      fontSize: 90,
                      height: -6.6,
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -290),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'jogadores',
                        style: TextStyle(
                          color: Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Autoconvidados',
                    style: TextStyle(
                      color: Appcolors.yellow,
                      fontFamily: 'ConcertOne',
                      fontSize: 40.0,
                      height: -14,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '3',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: 'ConcertOne',
                      fontSize: 90,
                      height: -6.3,
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -280),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'jogadores',
                        style: TextStyle(
                          color: Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ziraldos',
                    style: TextStyle(
                      color: Appcolors.yellow,
                      fontFamily: 'ConcertOne',
                      fontSize: 40.0,
                      height: -14,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '4',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: 'ConcertOne',
                      fontSize: 90,
                      height: -6.2,
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -270),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'jogadores',
                        style: TextStyle(
                          color: Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sparrings',
                    style: TextStyle(
                      color: Appcolors.yellow,
                      fontFamily: 'ConcertOne',
                      fontSize: 40.0,
                      height: -14,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '5',
                    style: TextStyle(
                      color: Appcolors.surfaceAlternative,
                      fontFamily: 'ConcertOne',
                      fontSize: 90,
                      height: -6.2,
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -272),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'jogadores',
                        style: TextStyle(
                          color: Appcolors.surfaceAlternative,
                          fontFamily: 'ConcertOne',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jogo Casado',
                style: TextStyle(
                  color: Appcolors.foreground,
                  fontFamily: 'ConcertOne',
                  fontSize: 35,
                  height: -10,
                ),
              ),

              Transform.translate(
                offset: Offset(
                  0,
                  -140,
                ), // Valor negativo move para cima (ajuste conforme necessidade)
                child: myButtonPlay(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget myButtonPlay(BuildContext context) {
  return SizedBox(
    width: 250, // Defina a largura desejada para o botão
    height: 60, // Defina a altura desejada para o botão
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Game()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.surfaceAlternative,
        foregroundColor: Appcolors.foreground,
        side: BorderSide(color: Appcolors.foreground, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ), // Aplica o mesmo BorderRadius do Container
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 80,
        ), // Ajusta o padding interno
      ),
      child: const Text(
        'Iniciar',
        style: TextStyle(fontFamily: 'ConcertOne', fontSize: 30),
      ),
    ),
  );
}
