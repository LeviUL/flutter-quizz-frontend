import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/screens/quizz/QuizzScreen.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.selected});

  final int? selected;

  @override
  Widget build(BuildContext context) {
    SessionData sessionData = Provider.of(context);
    Game game = Provider.of(context);

    Future<void> startQuizz() async {
      final category = selected != sessionData.getCategories().length
          ? sessionData.getCategories()[selected!].id
          : null;
      final response = await sessionData.getQuestionsQuery(category);
      if (response) {
        game.setQuestions(sessionData.getQuestions());
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const QuizzScreen(),
          ),
        );
        game.startTimer();
      }
    }

    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 36,
        child: ElevatedButton(
          onPressed: selected != null ? startQuizz : null,
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
