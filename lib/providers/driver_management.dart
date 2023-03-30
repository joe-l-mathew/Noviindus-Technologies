import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../utilities/user_provider_state.dart';
import '../widgets/show_snackbar.dart';
import 'api_constants.dart';
import 'driver_list_provider.dart';

class DriverManagement {
  Future<void> addDriver(String name, String mobileNumber, String licenseNumber,
      BuildContext context) async {
    var headers = {
      'Authorization':
          'Bearer ${Provider.of<UserProvider>(context, listen: false).user!.access}'
    };

    var response = await http.post(
        Uri.parse(
            "${ApiConstants.baseUrl}/DriverApi/${Provider.of<UserProvider>(context, listen: false).user!.urlId}/"),
        headers: headers,
        body: {
          "name": name,
          "mobile": mobileNumber,
          "license_no": licenseNumber
        });
    var responseData = json.decode(response.body);
    showSnackbar(context, "Added Successfuly");

    DriverListProvider().getDriverList(context);
  }

  Future<void> deleteDriver(int driverId, BuildContext context) async {
    var headers = {
      'Authorization':
          'Bearer ${Provider.of<UserProvider>(context, listen: false).user!.access}'
    };

    await http.delete(
        Uri.parse(
            "${ApiConstants.baseUrl}/DriverApi/${Provider.of<UserProvider>(context, listen: false).user!.urlId}/"),
        headers: headers,
        body: {
          "driver_id": driverId.toString(),
        });
    // ignore: use_build_context_synchronously
    showSnackbar(context, "Deleted Successfuly");
    // ignore: use_build_context_synchronously
    await DriverListProvider().getDriverList(context);
  }
}
