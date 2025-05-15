import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(LudoDiceApp());

//Muhammad Ali SE-22032
// Ludo Dice Roller App

class LudoDiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Dice Roller',
      debugShowCheckedModeBanner: false,
      home: DiceScreen(),
    );
  }
}

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int dice1 = 1;
  int dice2 = 1;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        title: Text('Ludo Dice Roller'),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Player 1's Turn",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/dice$dice1.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/dice$dice2.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Roll Dice',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
