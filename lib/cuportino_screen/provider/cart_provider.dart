import 'package:flutter/material.dart';

class Cart_provider extends ChangeNotifier {
  DateTime delivery = DateTime.now();

  void changedate(DateTime news) {
    delivery = news;
    notifyListeners();
  }
}
