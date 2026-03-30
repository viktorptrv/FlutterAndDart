import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(122, 22, 224, 222),
          foregroundColor: Colors.black38,
          centerTitle: true,
          title: Text('Hello world!'),
        ),

        backgroundColor: Colors.black38,

        // this is another property of Scaffold class
        body: Center(
          child: Image(
            image:
              NetworkImage('https://cdn.prod.website-files.com/60e5d6c0653fb08ef233e5e8/61a67797c4e6a7f332caf48f_Zz0yMjc0N2NjYThkOWQxMWViOTBkYWE3NjMzOGM3ZDdmMw%3D%3D.jpeg'),
          ),
        ),
      ),
    ),
  );
}
