
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell CircleAvatar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CircleAvatar InkWell - Muhammad Ali Arslan'),
        ),
        body: const Center(
          child: AvatarWithInkWell(),
        ),
      ),
    );
  }
}

class AvatarWithInkWell extends StatelessWidget {
  const AvatarWithInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        print("Hello");
      },
      child: const CircleAvatar(
        radius: 50,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}