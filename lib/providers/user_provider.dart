import 'package:flutter/material.dart';
import 'package:provider_exemple/models/user.dart';


class UserProvider extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void updateUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}
