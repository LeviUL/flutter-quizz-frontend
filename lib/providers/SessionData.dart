import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_game/models/Answer.dart';
import 'package:quiz_game/models/Question.dart';

class SessionData extends ChangeNotifier {
  List<Question> _questions = [];
  bool sessionLoading = true;
  bool sessionError = false;

  Future<void> initApp() async {
    try {
      final jsonString =
          await rootBundle.loadString("assets/data/question.json");
      final List<dynamic> jsonArray = jsonDecode(jsonString);

      List<Question> result = jsonArray.map((jsonQuestion) {
        List<Answer> options = List<Answer>.from(jsonQuestion['options']
            .map((option) => Answer(option['id'], option['value'])));
        return Question(
          jsonQuestion['id'],
          jsonQuestion['question'],
          jsonQuestion['answerId'],
          options,
        );
      }).toList();

      _questions = result;
      sessionLoading = false;
    } catch (e) {
      sessionError = true;
    } finally {
      notifyListeners();
    }
  }

  List<Question> getQuestions() {
    return _questions;
  }
}
