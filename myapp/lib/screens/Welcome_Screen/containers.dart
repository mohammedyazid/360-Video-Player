import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/buttons.dart';
import 'package:myapp/screens/Login_Screen/login.dart';
import 'package:myapp/screens/Player_Screen/player.dart';
import 'package:myapp/screens/Signup_screen/signuppage.dart';
import 'package:myapp/screens/Welcome_Screen/welcome.dart';
import 'package:myapp/screens/Home_Screen/home.dart';

class UpperWelcomeContainer extends StatelessWidget {
  const UpperWelcomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight - (deviceHeight / 1.5),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: base_color,
          // borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: const SingleChildScrollView(child: WelcomeImage()),
    );
  }
}

class BottomWelcomeContainer extends StatelessWidget {
  const BottomWelcomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight - (deviceHeight - (deviceHeight / 1.5)),
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Take your first step!",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Button(buttontext: 'Sign Up', nextpage: const SignUpPage()),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Already a member",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Button(buttontext: 'Login', nextpage: const LoginPage(),),
            const SizedBox(height: 30),
            Button(buttontext: 'Testing Player', nextpage: const PlayerPage())
          ],
        ),
      ),
    );
  }
}
