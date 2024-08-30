import 'package:flutter/material.dart';
import 'package:trialsih2024/screens/DisastersScreen/Flood/flood.dart';
import 'package:trialsih2024/screens/auth/account.dart';
import 'package:trialsih2024/screens/auth/login&SIgnup.dart';
import 'package:trialsih2024/screens/auth/login.dart';
import 'package:trialsih2024/screens/auth/signup.dart';
import 'package:trialsih2024/screens/disasters.dart';
import 'package:trialsih2024/screens/home.dart';
import 'package:trialsih2024/screens/onboarding.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disaster Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(), // Set HomePage as the initial screen
    );
  }
}