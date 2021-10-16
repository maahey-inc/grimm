import 'package:flutter/material.dart';

class HomeProvier extends ChangeNotifier {
  int currentindex = 0;
  changecurrentindex(int index) {
    currentindex = index;
    notifyListeners();
  }
}
