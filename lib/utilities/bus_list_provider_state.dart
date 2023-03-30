import 'package:flutter/material.dart';

class BusListProviderState with ChangeNotifier {
  List? busList;

  setBus(List busListParams) {
    busList = busListParams;
    notifyListeners();
  }
}
