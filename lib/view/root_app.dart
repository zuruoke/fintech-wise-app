import 'package:cashwise/view/landing_page.dart';
import 'package:cashwise/widgets/splash_page.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  bool _moveToMainScreen = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) => setState(() {
          _moveToMainScreen = true;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: !_moveToMainScreen ? const SplashPage() : const LandingPage());
  }
}
