import 'package:firebase/screens/create_account_screen.dart';
import 'package:firebase/services/auth_service.dart';
import 'package:firebase/widgets/comman_button.dart';
import 'package:firebase/widgets/comman_textfiled.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            commanTextfiledDecoration(
              hintText: 'Email Address',
              controller: emailController,
            ),
            SizedBox(
              height: 15,
            ),
            commanTextfiledDecoration(
              hintText: 'Password',
              controller: passwordController,
            ),
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
                    buttonText: 'Create Account',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateAccount(),
                      ));
                    })
              ],
            ),
            commanButtonDecoration(
              context: context,
              buttonText: 'LOGIN',
              onPressed: () async {
                await signIn(
                    emailController.text, passwordController.text, context);
              },
            )
          ],
        ),
      ),
    );
  }
}
