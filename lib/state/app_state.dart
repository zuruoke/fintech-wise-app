import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set loading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
