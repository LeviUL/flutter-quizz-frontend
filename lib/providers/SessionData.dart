import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openapi/openapi.dart';

class SessionData extends ChangeNotifier {
  List<Question> _questions = [];
  bool sessionLoading = true;
  bool sessionError = false;
  final api = Openapi(basePathOverride: "http://192.168.88.45:4000");

  Future<void> initApp() async {
    try {
      print("Getting questions...");
      final response = await api.getDefaultApi().questionsGet();
      if (response.data != null) {
        _questions = response.data!.toList();
        sessionLoading = false;
      } else {
        sessionError = true;
      }
    } catch (e) {
      print("ERROR");
      print(e);
      sessionError = true;
    } finally {
      notifyListeners();
    }
  }

  List<Question> getQuestions() {
    return _questions;
  }
}
