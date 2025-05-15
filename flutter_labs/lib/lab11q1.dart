import 'package:flutter/material.dart';

void main() {
  runApp(Lab1App());
}

class Lab1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lab 1')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Text('MD'),
            ),
            title: Text('Maaz Nadeem'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
