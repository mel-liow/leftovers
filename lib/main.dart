import 'package:flutter/material.dart';

import './screens/home/home.dart';
import './themes/theme.dart' as Theme;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.appThemeData,
      home: Scaffold(body: Center(child: Home())),
    );
  }
}
