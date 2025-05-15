import 'package:flutter/material.dart';

void main() {
  runApp(const RowsAndColumnsOne());
}

class RowsAndColumnsOne extends StatefulWidget {
  const RowsAndColumnsOne({Key? key}) : super(key: key);

  @override
  _RowsAndColumnsOneState createState() => _RowsAndColumnsOneState();
}

class _RowsAndColumnsOneState extends State<RowsAndColumnsOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Rows And Columns Lab",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to the Rows and Columns Lab",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                "This is a simple flutter application",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                "Explore the power of rows and columns",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Next button pressed");
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      print("Previous button pressed");
                    },
                    child: const Text(
                      "Previous",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
