import 'package:flutter/material.dart';
import 'package:responsive_ui/ResponsiveLayout.dart';
import 'package:responsive_ui/desktop.dart';
import 'package:responsive_ui/mediaQuery/basic.dart';
import 'package:responsive_ui/mediaQuery/loginPage/login_view.dart';
import 'package:responsive_ui/mobile.dart';
import 'package:responsive_ui/randomSizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileView(),
        desktopBody: DesktopView(),
      ),
    );
  }
}
