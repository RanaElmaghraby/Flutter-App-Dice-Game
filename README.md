# 🎲 Dice Game – Flutter

##  Overview
A simple interactive dice game built with Flutter. The app allows users to roll two dice, calculate their total score, and display a result based on the total.

## 🎥 Demo
https://drive.google.com/file/d/1He5klcPMDzZ9C3Q5lmglM42cXmrg2Po1/view?usp=sharing

A demo video showing the app running and testing the Roll and Reset buttons is included with the project submission.


##  Features
- **Roll:** Generates a random value from 1 to 6 for each die.
- **Total Score:** Displays the sum of the two dice.
- **Win/Lose Result:** Shows a happy image and "You Win!" when the total is greater than 10, otherwise displays a sad image and "You Lose!".
- **Reset:** Resets both dice to 1 and the total to 2.
- **Dark Theme:** Uses a dark theme with a custom blue color scheme.

##  Technologies Used
- Flutter
- Dart
- Material Design

##  Project Structure
```text
dice_game/
├── assets/
│   ├── happy.png
│   └── sad.png
├── lib/
│   ├── main.dart
│   └── dice.dart
├── pubspec.yaml
└── README.md
```


## Widget Tree 
```
MyApp
 └─ MaterialApp
     └─ DiceScreen
         └─ Scaffold
             ├─ [appBar] AppBar
             │   ├─ [leading] Icon (Icons.casino)
             │   └─ [title] Text ("Dice Game")
             │
             └─ [body] Center
                 └─ Column
                     ├─ Text ("Total: $total")
                     ├─ SizedBox (height: 20)
                     ├─ Image.asset
                     ├─ SizedBox (height: 10)
                     ├─ Text ("You Win! / You Lose!")
                     ├─ SizedBox (height: 25)
                     ├─ Row (Dices)
                     │   ├─ Dice (dice1)
                     │   │   └─ Icon (Icons.looks_*)
                     │   └─ Dice (dice2)
                     │       └─ Icon (Icons.looks_*)
                     ├─ SizedBox (height: 30)
                     └─ Row (Buttons)
                         ├─ Expanded
                         │   └─ ElevatedButton ("Roll")
                         │       └─ Text ("Roll")
                         ├─ SizedBox (width: 15)
                         └─ Expanded
                             └─ ElevatedButton ("Reset")
                                 └─ Text ("Reset")
```



##  Getting Started

### Prerequisites
Make sure Flutter is installed and configured on your machine.

### Installation
1. Clone or download this repository.
2. Open the project folder in your terminal.
3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

##  How to Play
1. Open the app.
2. Press **Roll** to roll both dice.
3. Check the total score and the displayed result.
4. Press **Reset** to return both dice to 1.

##  Author
**Rana Ahmed Elmaghraby**

