import 'package:firebase/screens/homepage.dart';
import 'package:firebase/widgets/comman_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

FirebaseAuth auth = FirebaseAuth.instance;
User user;
SharedPreferences preferencesObject;

Future<User> signUp(email, password, context) async {
  try {
    User user = (await auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    assert(user != null);
    assert(await user.getIdToken() != null);
    preferencesObject.setString('userUid', user.uid);
    return Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  } catch (e) {
    return showDialog(
      context: context,
      builder: (context) {
        return commanAlertDialog(context: context, errorText: e.message);
      },
    );
  }
}

Future<User> signIn(email, password, context) async {
  try {
    User user = (await auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    assert(user != null);
    assert(await user.getIdToken() != null);
    preferencesObject.setString('userUid', user.uid);
    return Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  } catch (e) {
    return showDialog(
      context: context,
      builder: (context) {
        return commanAlertDialog(context: context, errorText: e.message);
      },
    );
  }
}

Future<bool> authSignout() async {
  await auth.signOut();
  return true;
}
