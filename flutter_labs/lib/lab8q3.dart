import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          // White space at the top
          Container(
            height: 50,
            color: Colors.white,
          ),
          
          // Red container
          Container(
            height: 100,
            color: Colors.red,
          ),
          
          // Green container
          Container(
            height: 100,
            color: Colors.green,
          ),
          
          // Blue container
          Container(
            height: 100,
            color: Colors.blue,
          ),
          
          // Orange container
          Container(
            height: 100,
            color: Colors.orange,
          ),
          
          // Row of different colored containers
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.purple,
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.pink,
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
          
          // Expanded to push bottom nav bar to the bottom
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            const SizedBox(width: 48), // Space for FAB
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}