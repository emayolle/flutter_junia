import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  String _email = '';
  String get email => _email;

  String _firstName = '';
  String get firstName => _firstName;

  String _lastName = '';
  String get lastName => _lastName;

  void login(email, firstName, lastName) {
    _isLoggedIn = true;
    _email = email;
    _firstName = firstName;
    _lastName = lastName;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _email = '';
    _firstName = '';
    _lastName = '';
    notifyListeners();
  }
}
