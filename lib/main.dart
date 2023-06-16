import 'package:flutter/material.dart';
import '/Providers/HomeProvider.dart';
import '/Providers/Signupprovider.dart';
import '/Screens/login.dart';
import '/theme.dart';
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
        ChangeNotifierProvider<HomeProvier>(
          create: (context) => HomeProvier(),
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
