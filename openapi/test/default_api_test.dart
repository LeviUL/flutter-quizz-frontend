import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get all categories
    //
    //Future<BuiltList<Category>> categoriesGet() async
    test('test categoriesGet', () async {
      // TODO
    });

    // Create a new category
    //
    //Future<Question> categoriesPost(QuestionInput questionInput) async
    test('test categoriesPost', () async {
      // TODO
    });

    // Get all questions
    //
    //Future<BuiltList<Question>> questionsGet({ String categoryId }) async
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
