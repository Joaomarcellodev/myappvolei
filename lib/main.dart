import 'package:flutter/material.dart';
import 'package:myappvolei/app_colors.dart';
import 'package:myappvolei/mybuttonplay.dart';
import 'package:myappvolei/mybuttonadd.dart';
import 'package:myappvolei/scoreboard.dart';

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
          SizedBox(height: 30),
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
              Scoreboard(nameTime: "Sicranos", score: 3),
              SizedBox(height: 20),
              Scoreboard(nameTime: "Autoconvidados", score: 3),
              SizedBox(height: 20),
              Scoreboard(nameTime: "Ziraldos", score: 4),
              SizedBox(height: 20),
              Scoreboard(nameTime: "Sparrings", score: 5),
              SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Text(
                'Jogo Casado',
                style: TextStyle(
                  color: Appcolors.foreground,
                  fontFamily: 'ConcertOne',
                  fontSize: 35,
                ),
              ),
            ],
          ),
          myButtonPlay(context),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: myButtonAdd(context),
            ),
          ),
        ],
      ),
    );
  }
}
