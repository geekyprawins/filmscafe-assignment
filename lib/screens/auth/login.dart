import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:filmscafe_task/logic/auth_helper.dart';
import 'package:filmscafe_task/utils/helper.dart';
import 'package:filmscafe_task/widgets/custom_input.dart';
import 'package:filmscafe_task/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Image.asset("assets/images/app-icon.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: const Text(
                  "Welcome back, sign in!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: CustomInput(
                            title: "Email",
                            ctrl: _emailCtrl,
                            isObscure: false,
                            textInputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            nextFocusNode: passwordFocus,
                            focusNode: emailFocus,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          isObscure: true,
                          title: "Password",
                          ctrl: _passwordCtrl,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          nextFocusNode: FocusNode(canRequestFocus: false),
                          focusNode: passwordFocus,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 2,
                            top: 10,
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "reset-password");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: RoundedButton(
                            bWidth: MediaQuery.of(context).size.width / 1.5,
                            bFunction: () {
                              AuthHelper().signInEmailPassword(
                                context,
                                _emailCtrl.text,
                                _passwordCtrl.text,
                              );
                            },
                            bText: "Sign In",
                            textColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.0,
                            left: MediaQuery.of(context).size.width / 5.5,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                "Don't have an account ? ",
                                style: TextStyle(
                                  // color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                child: const Text(
                                  "Sign-up",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "signup");
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    Helper.showLoaderDialog(context);
                    final _googleUser = await AuthHelper().googleSignIn();
                    if (_googleUser != null) {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "home-screen");
                    } else {}
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Sign in with Google",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 1.5, 50),
                    primary: Colors.black87,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
