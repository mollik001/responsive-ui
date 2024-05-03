import 'package:flutter/material.dart';
import 'package:responsive_ui/mediaQuery/loginPage/login_signin.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.height * 0.05),
            child: SizedBox(
              height: mediaQuery.height * 0.3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the child vertically
                children: [
                  Text(
                    'Welcome to SO',
                    style: TextStyle(
                        fontSize: mediaQuery.width * 0.06,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.01,
                  ),
                  const Text.rich(
                    TextSpan(
                        text: 'You need to login to get access to your \n',
                        children: [
                          TextSpan(
                            text: 'account',
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  LoginSigninScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
