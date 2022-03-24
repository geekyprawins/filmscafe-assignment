import 'package:filmscafe_task/screens/auth/login.dart';
import 'package:filmscafe_task/screens/auth/signup.dart';
import 'package:filmscafe_task/screens/dummy.dart';
import 'package:filmscafe_task/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/landing_page.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("Firebase initialised! 🚀");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Filmscafe Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Inter",
      ),
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/app-icon.png",
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.orange,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
        nextScreen: const LandingPage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 300,
      ),
      routes: {
        "login": (context) => const LoginScreen(),
        "signup": (context) => const SignUp(),
        "dummy": (context) => const Dummy(),
        "home-screen": (context) => const HomeScreen(),
      },
    );
  }
}
