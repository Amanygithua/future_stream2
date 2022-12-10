import 'main.dart';
import 'package:flutter/material.dart';
import 'future.dart';
class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: future_screen(),
    );
  }
}
