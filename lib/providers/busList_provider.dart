import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constants.dart';

class BusListProvider {
  Future<void> getBusList(BuildContext context) async {
    final dio = Dio();


  final response = await dio.get(ApiConstants.baseUrl+'BusListApi');

  }
}
