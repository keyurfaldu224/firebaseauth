import 'package:flutter/material.dart';

Widget commanButtonDecoration(
    {context, Function onPressed, String buttonText}) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(255, 53, 59, 1),
        ),
        child: Text(buttonText),
      ),
    ),
  );
}

Widget commanTextButtonDecoration({Function onPressed, String buttonText}) {
  return Align(
    alignment: Alignment.center,
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      child: Text(buttonText),
    ),
  );
}
