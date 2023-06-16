import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function() ontap;
  String text;
  Color foreground;
  Color background;

  Button({
    required this.background,
    required this.foreground,
    required this.ontap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ButtonStyle(
        //elevation: 5.0,

        foregroundColor: MaterialStateProperty.all<Color>(foreground),
        backgroundColor: MaterialStateProperty.all<Color>(background),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
