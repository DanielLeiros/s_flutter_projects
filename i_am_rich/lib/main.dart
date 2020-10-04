import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("I'm rich"),
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: Colors.blueGrey[500],
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          ), 
        ),
      ),
    );
