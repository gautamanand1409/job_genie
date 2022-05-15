import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'WELCOME STUDENT',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Center(
          child: Column(
            children: [
              Lottie.asset('assets/logo.json'),
              Container(
                child: Text(
                  'JOB GENIE',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
