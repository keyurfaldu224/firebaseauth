import 'package:firebase/services/auth_service.dart';
import 'package:firebase/widgets/comman_button.dart';
import 'package:firebase/widgets/comman_textfiled.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              'Create Account',
              style: commanHedearText(fontSize: 35),
            ),
            SizedBox(
              height: 30,
            ),
            commanTextfiledDecoration(
              hintText: 'Username',
              controller: usernameController,
            ),
            SizedBox(
              height: 15,
            ),
            commanTextfiledDecoration(
                hintText: 'Email Address', controller: emailController),
            SizedBox(
              height: 15,
            ),
            commanTextfiledDecoration(
                hintText: 'Password', controller: passwordController),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you Have Account ?",
                  style: commanHedearText(fontSize: 15),
                ),
                commanTextButtonDecoration(
                    buttonText: 'Login Now',
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
            commanButtonDecoration(
              context: context,
              buttonText: 'Create Account',
              onPressed: () async {
                await signUp(
                    emailController.text, passwordController.text, context);
              },
            )
          ],
        ),
      ),
    );
  }
}
