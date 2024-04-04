import 'package:quiz_game/models/Answer.dart';

class Question {
  String id;
  String question;
  List<Answer> options;
  String answerId;

  Question(this.id, this.question, this.answerId, this.options);
}
