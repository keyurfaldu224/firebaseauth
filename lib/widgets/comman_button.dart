import 'package:flutter/material.dart';

Widget commanButtonDecoration(
    {context, Function onPressed, String buttonText}) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      width: MediaQuery.of(context).size.width / 2.5,
      child: ElevatedButton(
        onPressed: onPressed,
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
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      child: Text(buttonText),
    ),
  );
}

AlertDialog commanAlertDialog({String errorText, context}) {
  return AlertDialog(
    title: Text('Alert!'),
    actions: [
      Text(errorText),
      commanButtonDecoration(
          buttonText: 'OK',
          context: context,
          onPressed: () {
            Navigator.of(context).pop();
          })
    ],
  );
}
