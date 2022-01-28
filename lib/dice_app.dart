import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  DiceApp({Key key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int solNomer = 1;
  int onNomer = 3;

  void ozgort() {
    Random random = Random();
    int randomNumber = random.nextInt(100);
    setState(() {
      solNomer = random.nextInt(6) + 1;
      onNomer = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title:
            Text('Кубик'.toUpperCase(), style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: ozgort,
                  child: Image.asset(
                    "assets/images/dice_$solNomer.png",
                    color: Colors.white,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: ozgort,
                  child: Image.asset(
                    "assets/images/dice_$onNomer.png",
                    color: Colors.white,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
