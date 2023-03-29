import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_login_model.dart';
import '../utilities/user_provider.dart';
import 'api_constants.dart';

class LoginProvider {
  final dio = Dio();

  Future<void> loginUser(
      String userName, String password, BuildContext context) async {
    Response response = await dio.post('${ApiConstants.baseUrl}/LoginApi',
        data: {'username': 'admin_user', 'password': '123admin789'});

    UserLoginModel user = UserLoginModel.fromJson(response.data);
    // ignore: use_build_context_synchronously
    Provider.of<UserProvider>(context, listen: false).setUser(user);
  }
}
