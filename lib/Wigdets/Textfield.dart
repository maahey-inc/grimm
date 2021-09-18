import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  TextEditingController controller = new TextEditingController();
  TextInputType keyboardtype;
  String hinttext;
  Textfield({
    this.controller,
    this.keyboardtype = TextInputType.name,
    @required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardtype,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.grey[700],
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.white, fontSize: 13),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
