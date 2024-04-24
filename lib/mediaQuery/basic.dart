import 'package:flutter/material.dart';
import 'package:responsive_ui/mediaQuery/my_Box.dart';

class FirstMediaQuery extends StatelessWidget {
  const FirstMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    return const Scaffold(
      body: Center(
        child: MyBox(
          child: Expanded(
            child: Text(
              'My father is protecting me.',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
