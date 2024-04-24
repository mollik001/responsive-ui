// ignore: file_names
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Widget child;
  const MyBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      width: mediaQuery.size.shortestSide * 0.6,
      height: mediaQuery.size.longestSide * 0.6,
      alignment: Alignment.center,
      color: Colors.grey[300],
      //padding: EdgeInsets.only(left: 50, right: 50),
      child: child,
    );
  }
}
