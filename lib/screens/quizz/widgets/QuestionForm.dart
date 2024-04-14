import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/providers/Game.dart';
import 'package:quiz_game/screens/quizz/widgets/NextButton.dart';
import 'package:quiz_game/screens/quizz/widgets/QuestionOption.dart';
import 'package:quiz_game/screens/quizz/widgets/QuestionText.dart';
import 'package:quiz_game/screens/quizz/widgets/StatusBar.dart';

class QuestionForm extends StatelessWidget {
  const QuestionForm({super.key, required this.currentQuestion});

  final Question currentQuestion;

  @override
  Widget build(BuildContext context) {
    Game game = Provider.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatusBar(),
        QuestionText(question: currentQuestion.question),
        Expanded(
          child: ListView.builder(
            itemCount: currentQuestion.options.length,
            itemBuilder: (context, index) {
              bool isCorrectAnswer =
                  currentQuestion.answerId == currentQuestion.options[index].id;
              return QuestionOption(
                answer: currentQuestion.options[index],
                isQuestionAnswered: game.getIsQuestionAnswered(),
                submitResponse: game.submitResponse,
                isCorrectAnswer: isCorrectAnswer,
                isRevealing: game.getIsRevealing(),
                toggleRevealState: game.toggleRevealState,
                startTimer: game.startIntervaler,
                stopTimer: game.stopIntervaler,
                isSelected: currentQuestion.options[index].id ==
                    game.getSelectedAnswer()?.id,
              );
            },
          ),
        ),
        NextButton(
          isQuestionAnswered: game.getIsQuestionAnswered(),
          nextQuestion: game.goToNextQuestion,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "${game.getCurrent() + 1} of ${game.getQuestions()!.length}",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
