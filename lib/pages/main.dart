import 'package:flutter/material.dart';
import 'package:myappvolei/widgets/app_colors.dart';
import 'package:myappvolei/widgets/my_button_play.dart';
import 'package:myappvolei/widgets/my_button_add.dart';
import 'package:myappvolei/widgets/score_board.dart';

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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 80),
                decoration: BoxDecoration(
                  color: Appcolors.surface,
                  border: Border.all(color: Appcolors.foreground, width: 2),
                ),

                child: Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 60),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'TIMES',
                      style: TextStyle(
                        color: Appcolors.foreground,
                        fontFamily: 'ConcertOne',
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero, 
              children: [
                Scoreboard(nameTime: "Sicranos", score: 3),
                SizedBox(height: 8),
                Scoreboard(nameTime: "Autoconvidados", score: 3),
                SizedBox(height: 8),
                Scoreboard(nameTime: "Ziraldos", score: 4),
                SizedBox(height: 8),
                Scoreboard(nameTime: "Sparrings", score: 5),
              ],
            ),
          ),
          Text(
            'Jogo Casado',
            style: TextStyle(
              color: Appcolors.foreground,
              fontFamily: 'ConcertOne',
              fontSize: 32,
            ),
          ),
          myButtonPlay(context, name: 'Iniciar'),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(top: 90, right: 20),
              child: myButtonAdd(context),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
