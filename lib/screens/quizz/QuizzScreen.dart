import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/providers/SessionData.dart';
import 'package:quiz_game/screens/quizz/widgets/QuestionForm.dart';

class QuizzScreen extends StatelessWidget {
  const QuizzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SessionData sessionData = Provider.of(context);
    Game game = Provider.of(context);

    if (sessionData.getQuestions() == null) {
      return const Center(
        child: Text("Loading"),
      );
    }

    int current = game.getCurrent();
    Question currentQuestion = game.getQuestions()![current];

    return QuestionForm(currentQuestion: currentQuestion);
  }
}
