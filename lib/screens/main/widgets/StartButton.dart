import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/screens/quizz/QuizzScreen.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    Game game = Provider.of(context);

    void startGame() {
      game.reset();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const QuizzScreen(),
        ),
      );
      game.goToNextQuestion();
    }

    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 36,
        child: ElevatedButton(
          onPressed: startGame,
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor)),
          child: const Text(
            "Start",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
