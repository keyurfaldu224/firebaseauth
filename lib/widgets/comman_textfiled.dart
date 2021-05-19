import 'package:flutter/material.dart';

Widget commanTextfiledDecoration(
    {String hintText, TextEditingController controller}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.red[50],
      borderRadius: BorderRadius.circular(5),
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    ),
  );
}

TextStyle commanHedearText({double fontSize}) {
  return TextStyle(
      color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold);
}
