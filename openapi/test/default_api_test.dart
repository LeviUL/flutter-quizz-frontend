import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get all questions
    //
    //Future<BuiltList<Question>> questionsGet() async
    test('test questionsGet', () async {
      // TODO
    });

    // Create a new question
    //
    //Future<Question> questionsPost(QuestionInput questionInput) async
    test('test questionsPost', () async {
      // TODO
    });

  });
}
