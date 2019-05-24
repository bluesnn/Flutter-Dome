import 'package:flutter/material.dart';

import './pages/landing_page.dart';
import './pages/quiz_page.dart';
import './pages/score_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter App',
      home: LandingPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new HomePage()
    );
  }
}
