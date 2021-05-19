import 'package:firebase/screens/homepage.dart';
import 'package:firebase/screens/login_screen.dart';
import 'package:firebase/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await SharedPreferences.getInstance().then((prefs) {
    preferencesObject = prefs;
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: preferencesObject.getString('userUid') != null
          ? HomePage()
          : LoginScreen(),
    );
  }
}
