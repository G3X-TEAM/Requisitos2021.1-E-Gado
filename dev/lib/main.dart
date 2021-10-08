import 'package:flutter/material.dart';
import 'Screens/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue
      ),

      debugShowCheckedModeBanner: false,
      home: LoginMenu(),
    );
  }
}
