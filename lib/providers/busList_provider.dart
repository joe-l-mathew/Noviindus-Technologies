import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../utilities/bus_list_provider_state.dart';
import '../utilities/user_provider_state.dart';
import 'api_constants.dart';

class BusListProvider {
  Future<void> getBusList(BuildContext context) async {
    var headers = {
      'Authorization':
          'Bearer ${Provider.of<UserProvider>(context, listen: false).user!.access}'
    };
    var response = await http.get(
        Uri.parse(
            "${ApiConstants.baseUrl}/BusListApi/${Provider.of<UserProvider>(context, listen: false).user!.urlId}/"),
        headers: headers);
    var responseData = json.decode(response.body);
    Provider.of<BusListProviderState>(context, listen: false)
        .setBus(responseData['bus_list']);
  }
}
