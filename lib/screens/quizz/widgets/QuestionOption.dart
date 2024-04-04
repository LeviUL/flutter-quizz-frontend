import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_game/models/Answer.dart';

class QuestionOption extends StatefulWidget {
  const QuestionOption(
      {super.key,
      required this.answer,
      required this.isQuestionAnswered, //
      required this.submitResponse,
      required this.isCorrectAnswer,
      required this.isSelected,
      required this.isRevealing,
      required this.toggleRevealState,
      required this.startTimer,
      required this.stopTimer});

  final Answer answer;
  final bool isSelected;
  final bool isQuestionAnswered;
  final void Function(Answer) submitResponse;
  final bool isCorrectAnswer;
  final bool isRevealing;
  final VoidCallback toggleRevealState;
  final VoidCallback startTimer;
  final VoidCallback stopTimer;

  @override
  State<QuestionOption> createState() => _QuestionOptionState();
}

class _QuestionOptionState extends State<QuestionOption> {
  @override
  Widget build(BuildContext context) {
    bool shouldFlashOnWrongSubmit =
        (widget.isRevealing && widget.isCorrectAnswer && !widget.isSelected);

    Color? selectedColor = (widget.isSelected && widget.isQuestionAnswered)
        ? widget.isCorrectAnswer
            ? Theme.of(context).primaryColor
            : Colors.red
        : null;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 36,
        child: OutlinedButton(
          onPressed: widget.isQuestionAnswered
              ? null
              : () {
                  widget.submitResponse(widget.answer);
                },
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: Theme.of(context).primaryColorDark)),
            backgroundColor: MaterialStatePropertyAll(shouldFlashOnWrongSubmit
                ? Theme.of(context).primaryColor
                : selectedColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: Text(
            widget.answer.value,
            style: TextStyle(
                color: shouldFlashOnWrongSubmit || selectedColor != null
                    ? Colors.white
                    : Theme.of(context).primaryColorDark),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.stopTimer();
    super.dispose();
  }
}
