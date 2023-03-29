import 'package:flutter/material.dart';

import '../models/user_login_model.dart';

class UserProvider extends ChangeNotifier {
  UserLoginModel? user;

  setUser(UserLoginModel usermodel) {
    user = usermodel;
    notifyListeners();
  }
}
