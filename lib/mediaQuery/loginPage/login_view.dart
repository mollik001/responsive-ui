import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.2,
            width: double.infinity,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the child vertically
              children: [
                Text(
                  'Welcome to SO',
                  style: TextStyle(
                    fontSize: mediaQuery.size.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Login or Sign up to access your account',
                  style: TextStyle(fontSize: 15.7),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
