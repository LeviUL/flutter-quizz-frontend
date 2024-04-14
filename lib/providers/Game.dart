import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:quiz_game/models/StopTimer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class Game extends ChangeNotifier {
  int _score = 0;
  List<Question>? _questions;
  int _current = 0;
  bool _isQuestionAnswered = false;
  Option? _selectedAnswer;
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

  List<Question>? getQuestions() {
    return _questions;
  }

  int getCurrent() {
    return _current;
  }

  bool getIsQuestionAnswered() {
    return _isQuestionAnswered;
  }

  Option? getSelectedAnswer() {
    return _selectedAnswer;
  }

  bool getIsRevealing() {
    return _isRevealing;
  }

  bool isLastQuestion() {
    if (_current < _questions!.length - 1) {
      return false;
    }
    return true;
  }

  void setQuestions(List<Question>? questions) {
    _questions = questions;
  }

  void setIsRevealing(bool value) {
    _isRevealing = value;
  }

  void reset() {
    _isRevealing = false;
    stopIntervaler();
    _timer.reset();
    _questions = null;
    _score = 0;
    _current = 0;
    _isQuestionAnswered = false;
    _selectedAnswer = null;
  }

  void submitResponse(Option? answer) {
    _timer.stop();
    _selectedAnswer = answer;
    _isQuestionAnswered = true;
    _isRevealing = true;
    if (_questions![_current].answerId == answer?.id) {
      _score = _score + 1;
    } else {
      startIntervaler();
    }
    notifyListeners();
  }

  void goToNextQuestion() {
    stopIntervaler();
    startTimer();
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

  void startTimer() {
    _timer.start();
  }
}
