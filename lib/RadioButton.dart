import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 10, 255, 202),
          title: Text('Sujan Prodhan Demo page '),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Sujan Prodhan');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 110, 176, 112),
            ),
            child: Text('Sujan Prodhan' , 
           style: TextStyle(color: Colors.white),  ),
          ),
        ),
      ),
    );
  }
}
