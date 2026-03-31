import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('LOL, i am poor!'),
          backgroundColor: Colors.black38,
          foregroundColor: Colors.blueAccent,
        ),
        
        body: Center(
          child: Image(
            image: AssetImage('images/poor.png'),
          ),
        ),
      ), 
    ),
  );
}
