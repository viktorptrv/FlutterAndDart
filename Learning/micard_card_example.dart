import 'dart:io';

import 'package:flutter/material.dart';

// Source - https://stackoverflow.com/a/70048363
// Posted by Timotheux, modified by community. See post 'Timeline' for change history
// Retrieved 2026-03-31, License - CC BY-SA 4.0

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
        backgroundColor: Colors.tealAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 50,
              minRadius: 30,
              child: Image(
                image: AssetImage('images/diamond.png'),
              ),
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 30,
              child: Center(
                child: Text(
                  'Viktor Petrov',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                )
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 30,
              child: Center(
                  child: Text(
                      'Robotics Engineer',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                  )
              ),
            ),

            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '0000000',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87
                    ),
                  ),
                )
              ),
            ),

            Card(

              child:  Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'gmail',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87
                    )
                  ),
                )
              ),
            )
          ],
        ),
      )
    );
  }
}
