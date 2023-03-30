import 'package:flutter/material.dart';

import '../models/driver_model.dart';

class DriverListProviderState with ChangeNotifier {
  DriverModel? driverModel;

  setDriverMOdel(DriverModel model) {
    driverModel = model;
    notifyListeners();
  }
}
