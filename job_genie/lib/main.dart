import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job_genie/screens/home.dart';
import 'package:job_genie/screens/login.dart';
import 'package:job_genie/screens/register.dart';
import 'package:job_genie/screens/splash.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'home': (context) => MyHome(),
      },
    );
  }
}
