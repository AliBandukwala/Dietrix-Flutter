import 'package:flutter/material.dart';
import 'pages/login-signup.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/setup.dart';
import 'pages/subscribe.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      primaryColor: Colors.green,
      fontFamily: 'Hind',
    ),
  ));
}
