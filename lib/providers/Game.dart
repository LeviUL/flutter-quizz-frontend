import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_game/models/Answer.dart';
import 'package:quiz_game/models/Question.dart';
import 'package:quiz_game/models/StopTimer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class Game extends ChangeNotifier {
  int _score = 0;
  late List<Question> _questions;
  int _current = -1;
  bool _isQuestionAnswered = false;
  Answer? _selectedAnswer;
  bool _isRevealing = false;
  Timer? intervaler;
  late StopTimer _timer;

  Game() {
    _timer = StopTimer(() {
      submitResponse(null);
    });
  }

  void startIntervaler() {
    intervaler =
        Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      toggleRevealState();
    });
  }

  void stopIntervaler() {
    intervaler?.cancel();
    intervaler = null;
  }

  StopWatchTimer getTimer() {
    return _timer.getTimer();
  }

  int getScore() {
    return _score;
  }

  List<Question> getQuestions() {
    return _questions;
  }

  int getCurrent() {
    return _current;
  }

  bool getIsQuestionAnswered() {
    return _isQuestionAnswered;
  }

  Answer? getSelectedAnswer() {
    return _selectedAnswer;
  }

  bool getIsRevealing() {
    return _isRevealing;
  }

  bool isLastQuestion() {
    if (_current < _questions.length - 1) {
      return false;
    }
    return true;
  }

  void setQuestions(List<Question> questions) {
    _questions = questions;
  }

  void setIsRevealing(bool value) {
    _isRevealing = value;
  }

/////
  void reset() {
    _score = 0;
    _current = -1;
    _isQuestionAnswered = false;
    _selectedAnswer;
    _isRevealing = false;
  }

  void submitResponse(Answer? answer) {
    _timer.stop();
    _selectedAnswer = answer;
    _isQuestionAnswered = true;
    _isRevealing = true;
    if (_questions[_current].answerId == answer?.id) {
      _score = _score + 1;
    } else {
      startIntervaler();
    }
    notifyListeners();
  }

  void goToNextQuestion() {
    stopIntervaler();
    _timer.start();
    _selectedAnswer = null;
    _isQuestionAnswered = false;
    _current = _current + 1;
    _isRevealing = false;
    notifyListeners();
  }

  void toggleRevealState() {
    _isRevealing = !_isRevealing;
    notifyListeners();
  }
}
