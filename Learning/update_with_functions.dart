import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice_number = 1;
  int right_dice_number = 2;

  void update_dice(){
    left_dice_number= Random().nextInt(6) + 1;
    right_dice_number = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          //right_dice_number += 1;
                          //if (right_dice_number > 6)
                          //  right_dice_number = 1;
                          update_dice();
                        });
                      },
                      child: Image.asset('images/dice$right_dice_number.png'))
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: (){
                      setState(() { // update the whole build so that it will change the pictures
                        //left_dice_number += 1;
                        //if (left_dice_number > 6)
                        // left_dice_number = 1;
                        update_dice();
                      });
                      print('Left button got pressed');
                    },
                    child: Image.asset('images/dice$left_dice_number.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

