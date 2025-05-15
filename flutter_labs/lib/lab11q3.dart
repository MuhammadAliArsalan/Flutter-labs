import 'package:flutter/material.dart';

void main() {
  runApp(Lab3App());
}

class Lab3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lab 3')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/my ghibli.png'),
            ),
            title: Text('Profile Image Tile'),
            onTap: () {
              print('Tile tapped');
            },
          ),
        ),
      ),
    );
  }
}
