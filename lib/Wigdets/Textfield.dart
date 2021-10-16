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
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        //fillColor: Colors.grey[700],
        //filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
