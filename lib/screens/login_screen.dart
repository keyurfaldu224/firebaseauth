import 'package:firebase/widgets/comman_button.dart';
import 'package:firebase/widgets/comman_textfiled.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Now',
              style: commanHedearText(fontSize: 35),
            ),
            SizedBox(
              height: 30,
            ),
            commanTextfiledDecoration(hintText: 'Email Address'),
            SizedBox(
              height: 15,
            ),
            commanTextfiledDecoration(hintText: 'Password'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a Account ?",
                  style: commanHedearText(fontSize: 15),
                ),
                commanTextButtonDecoration(
                    buttonText: 'Create Account', onPressed: () {})
              ],
            ),
            commanButtonDecoration(
              context: context,
              buttonText: 'LOGIN',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
