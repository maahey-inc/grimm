import 'package:flutter/material.dart';
import 'package:grimm/Providers/Signupprovider.dart';
import 'package:grimm/Screens/login.dart';
import 'package:grimm/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Signupprovider>(
          create: (context) => Signupprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grimm',
        theme: theme(context),
        home: Login(),
      ),
    );
  }
}
