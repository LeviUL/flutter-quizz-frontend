import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class SessionData extends ChangeNotifier {
  List<Category> _categories = [];
  List<Question>? _questions;
  bool sessionLoading = true;
  bool sessionError = false;
  final api = Openapi(basePathOverride: "http://localhost:4000");

  Future<void> initApp() async {
    sessionLoading = true;
    try {
      await getCategoriesQuery();
    } catch (e) {
      sessionError = true;
    } finally {
      sessionLoading = false;
      notifyListeners();
    }
  }

  Future<void> getCategoriesQuery() async {
    try {
      final response = await api.getDefaultApi().categoriesGet();
      if (response.data != null) {
        _categories = response.data!.toList();
      } else {
        sessionError = true;
      }
    } catch (e) {
      sessionError = true;
    }
  }

  Future<bool> getQuestionsQuery(String? categoryId) async {
    try {
      final response =
          await api.getDefaultApi().questionsGet(categoryId: categoryId);
      if (response.data != null) {
        _questions = response.data!.toList();
        return true;
      } else {
        sessionError = true;
      }
      return false;
    } catch (e) {
      sessionError = true;
      notifyListeners();
      return false;
    }
  }

  List<Question>? getQuestions() {
    return _questions;
  }

  List<Category> getCategories() {
    return _categories;
  }
}
