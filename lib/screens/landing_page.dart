import 'package:flutter/material.dart';
import 'package:filmscafe_task/screens/auth/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        height: height,
        width: width,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              top: -height * 0.12,
              left: -height * 0.12,
              child: SizedBox(
                height: height * 0.32,
                child: Image.asset(
                  'assets/images/floralTL.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              bottom: -height * 0.12,
              right: -height * 0.12,
              child: SizedBox(
                height: height * 0.32,
                child: Image.asset(
                  'assets/images/floralTL.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            // Center(
            //   child: SizedBox(
            //     height: height * 0.42,
            //     width: width,
            //     child: Image.asset(
            //       'assets/images/floralTL.png',
            //     ),
            //   ),
            // ),
            Center(
              child: SizedBox(
                height: height * 0.42,
                width: width,
                child: Image.asset(
                  'assets/images/app-logo.png',
                ),
              ),
            ),
            Positioned(
              top: height * 0.72,
              left: width * 0.1,
              width: width * 0.8,
              height: height * 0.08,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFF8C22),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Discover our platform',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "dummy");
                },
              ),
            ),
            Positioned(
              top: height * 0.79,
              left: width * 0.1,
              width: width * 0.8,
              height: height * 0.08,
              child: TextButton(
                child: const Text(
                  "Already have an account? Log-in",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
