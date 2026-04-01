import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text(
                'Fortune telling ball'),
            centerTitle: true,
            backgroundColor: Colors.white10
          ),
          body: FortuneBall(),
        ),
      ),
    );

class FortuneBall extends StatefulWidget {
  const FortuneBall({super.key});

  @override
  State<FortuneBall> createState() => _FortuneBallState();
}

class _FortuneBallState extends State<FortuneBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Press the ball to get your answer!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  )
                ),
              ),
            ),

            Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      ballNum = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNum.png',
                    width: 200,
                    height: 200,
                  ),
              ),
            ),
          ],
        )
    );
  }
}


