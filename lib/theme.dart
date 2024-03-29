import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'constants.dart';
TextStyle style2 = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
TextStyle style1 = TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.w500,
);
TextStyle style3 = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle style4 = TextStyle(
  color: Colors.white,
  fontSize: 14,
  // fontWeight: FontWeight.w500,
);
ThemeData theme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xff2A2D36),
    //fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: GoogleFonts.robotoTextTheme(
      Theme.of(context).textTheme,
    ),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Colors.white),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

// TextTheme textTheme() {
// return
//   // return TextTheme(
//   //   bodyText1: TextStyle(color: Colors.white),
//   //   bodyText2: TextStyle(color: Colors.white),
//   //   headline3: TextStyle(
//   //     color: Colors.white,
//   //     fontSize: 20,
//   //     fontWeight: FontWeight.w500,
//   //   ),
//   // );
// }

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    backgroundColor: Color(0xff2A2D36),
    elevation: 10,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    toolbarTextStyle: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
    ).bodyText2,
    titleTextStyle: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
    ).headline6,
  );
}
