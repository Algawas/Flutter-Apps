import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Keep On Dreaming'),
          backgroundColor: Colors.red[50],
        ),
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Image(
            image: AssetImage('images/dreamon.png'),
          ),
        ),
      ),
    ),
  );
}
