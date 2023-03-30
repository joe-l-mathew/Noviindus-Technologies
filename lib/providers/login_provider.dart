import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../models/user_login_model.dart';
import '../utilities/user_provider.dart';
import '../widgets/show_snackbar.dart';

class LoginProvider {
  Future<bool> loginUser(
      String userName, String password, BuildContext context) async {
    String url = "http://flutter.noviindus.co.in/api/LoginApi";
    final response = await http.post(Uri.parse(url),
        body: {'username': 'admin_user', 'password': '123admin789'});
    var responseData = json.decode(response.body);
    if (responseData['status'] == true) {
      UserLoginModel user = UserLoginModel.fromJson(responseData);
      // ignore: use_build_context_synchronously
      Provider.of<UserProvider>(context, listen: false).setUser(user);
      return true;
    } else {
      // ignore: use_build_context_synchronously
      showSnackbar(context, "Invalid Credentials");
      return false;
    }
  }
}
