
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CircleAvatars Scroll Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AvatarScrollPage(),
    );
  }
}

class AvatarScrollPage extends StatelessWidget {
  const AvatarScrollPage({super.key});

  final List<Color> colors = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  String getColorName(Color color) {
    if (color == Colors.red) return "Red";
    if (color == Colors.green) return "Green";
    if (color == Colors.blue) return "Blue";
    if (color == Colors.orange) return "Orange";
    if (color == Colors.purple) return "Purple";
    if (color == Colors.teal) return "Teal";
    return "Unknown";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samiullah\'s CircleAvatars'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: colors.map((color) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    final snackBar = SnackBar(
                      content: Text('Tapped on ${getColorName(color)} avatar!'),
                      duration: const Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: color,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}