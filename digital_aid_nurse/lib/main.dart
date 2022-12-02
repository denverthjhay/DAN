import 'package:flutter/material.dart';
import './getstarted.dart';

void main() => runApp(LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GetstartedscreenWidget(),
      ),
    );
  }
}
