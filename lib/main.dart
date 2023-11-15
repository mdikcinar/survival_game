import 'package:flutter/material.dart';
import 'package:survival_game/game_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survival Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameView(),
    );
  }
}
