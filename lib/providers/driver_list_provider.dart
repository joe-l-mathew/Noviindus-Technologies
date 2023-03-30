import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../models/driver_model.dart';
import '../utilities/driver_list_provider_state.dart';
import '../utilities/user_provider_state.dart';
import 'api_constants.dart';

class DriverListProvider {
  Future<void> getDriverList(BuildContext context) async {
    var headers = {
      'Authorization':
          'Bearer ${Provider.of<UserProvider>(context, listen: false).user!.access}'
    };
    var response = await http.get(
        Uri.parse(
            "${ApiConstants.baseUrl}/DriverApi/${Provider.of<UserProvider>(context, listen: false).user!.urlId}/"),
        headers: headers);
    var responseData = json.decode(response.body);
    DriverModel model = DriverModel.fromJson(responseData);
    // ignore: use_build_context_synchronously
    Provider.of<DriverListProviderState>(context, listen: false)
        .setDriverMOdel(model);
  }
}
