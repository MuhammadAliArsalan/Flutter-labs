import 'package:flutter/material.dart';

void main() {
  runApp(Lab2App());
}

class Lab2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lab 2')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(child: Text('SM')),
                title: Text('Samiullah'),
                subtitle: Text('Frontend Developer'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('MAA')),
                title: Text('M.Ali Arslan'),
                subtitle: Text('Backend Developer'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('VH')),
                title: Text('Vaiz Hasan'),
                subtitle: Text('UI/UX Designer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
