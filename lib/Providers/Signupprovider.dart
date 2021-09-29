import 'package:flutter/material.dart';
import 'package:grimm/Screens/Signupoption.dart';

class Signupprovider extends ChangeNotifier {
  User usertype = User.prod;
  changeuser(User user) {
    usertype = user;
    notifyListeners();
  }
}
