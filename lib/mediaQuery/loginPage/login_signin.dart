import 'package:flutter/material.dart';
import 'package:responsive_ui/mediaQuery/loginPage/theme.dart';

class LoginSigninScreen extends StatefulWidget {
  @override
  _LoginSigninScreenState createState() => _LoginSigninScreenState();
}

class _LoginSigninScreenState extends State<LoginSigninScreen> {
  bool loginSelected = false;
  bool signupSelected = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              loginSelected = true;
              signupSelected = false;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.02),
            width: mediaQuery.width * 0.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: loginSelected ? AppColor.bgcolor2 : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              loginSelected = false;
              signupSelected = true;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.02),
            width: mediaQuery.width * 0.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: signupSelected ? AppColor.bgcolor2 : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              'Signup',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
