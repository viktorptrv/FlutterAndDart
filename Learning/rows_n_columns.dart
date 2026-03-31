import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Container(
                    width:100,
                    color: Colors.blue,
                    child: Text('Container 1')
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.amber
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.black26
                        )
                      ],
                    )
                  ),
                  SizedBox(width: 50),
                  Container(
                      width:100,
                      color: Colors.blue,
                      child: Text('Container 2')
                  )
              ],
            ),
        ),
      ),
    );
  }
}
