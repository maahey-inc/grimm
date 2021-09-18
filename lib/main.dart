import 'package:flutter/material.dart';

import 'package:grimm/Screens/Productdescription.dart';
import 'package:grimm/Screens/login.dart';

import 'package:grimm/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grimm',
      theme: theme(),
      home: Login(),
    );
  }
}
