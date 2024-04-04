import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/screens/main/widgets/StartButton.dart';
import 'package:quiz_game/widgets/Welcome.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    SessionData sessionData = Provider.of(context);
    Game game = Provider.of(context);

    game.setQuestions(sessionData.getQuestions());

    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Welcome(), StartButton()],
      ),
    );
  }
}
