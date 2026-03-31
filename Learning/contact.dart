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

            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                color: Colors.white70
              ),
              child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.call
                      ),
                      SizedBox(
                          width:30.0
                      ),
                      Center(
                        child: Text(
                          '000000000',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
            ),

            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                color: Colors.white70
              ),

              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                      Icons.email
                  ),
                  SizedBox(width: 30.0),
                  Center(
                      child: Text(
                        '@gmail',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14
                        ),
                      )
                  )
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
