import 'package:flutter/material.dart';
import 'package:myapp/components/topsection.dart';
import 'package:myapp/screens/Login_Screen/form.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children:  [TopSection(), LoginForm()],
      )),
    );
  }
}
