import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/screens/result/ResultScreen.dart';

class NextButton extends StatelessWidget {
  const NextButton(
      {super.key,
      required this.isQuestionAnswered,
      required this.nextQuestion});

  final bool isQuestionAnswered;
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    Game game = Provider.of(context);

    void handleClick() {
      if (game.isLastQuestion()) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ResultScreen(),
          ),
        );
      } else {
        nextQuestion();
      }
    }

    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 24),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 36,
        child: Opacity(
          opacity: isQuestionAnswered ? 1 : 0.4,
          child: ElevatedButton(
            onPressed: isQuestionAnswered
                ? () {
                    handleClick();
                  }
                : null,
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5.0), // Set the desired radius here
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor)),
            child: Text(
              game.isLastQuestion() ? "Fin" : "Next",
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
