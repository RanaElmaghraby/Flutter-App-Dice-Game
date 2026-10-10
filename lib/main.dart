import 'dart:math';
import 'package:flutter/material.dart';
import 'dice.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 67, 105, 170),
          brightness: Brightness.dark,
        ),
      ),
      home: DiceScreen(),
    );
  }
}






class DiceScreen extends StatefulWidget {
  @override
  State<DiceScreen> createState() => DiceScreenState();
}






class DiceScreenState extends State<DiceScreen> {
  int dice1 = 1;
  int dice2 = 1;
  int total = 2;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
      total = dice1 + dice2;
    });
  }

  void resetDice() {
    setState(() {
      dice1 = 1;
      dice2 = 1;
      total = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isWin = total > 10;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Game"),
        centerTitle: true,
        leading: Icon(Icons.casino),
        backgroundColor: Color.fromARGB(255, 67, 105, 170),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total: $total",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Image.asset(
              isWin ? "assets/happy.png" : "assets/sad.png",
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),

            SizedBox(height: 10),

            Text(
              isWin ? "You Win" : "You Lose",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isWin ? Colors.greenAccent : Colors.redAccent,
              ),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Dice(value: dice1),
                Dice(value: dice2),
              ],
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: rollDice,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 67, 105, 170),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text("Roll"),
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton(
                    onPressed: resetDice,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 67, 105, 170),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text("Reset"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
