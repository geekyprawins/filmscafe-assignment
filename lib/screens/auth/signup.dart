import 'package:filmscafe_task/logic/auth_helper.dart';
import 'package:flutter/material.dart';

import 'package:filmscafe_task/screens/auth/login.dart';

import 'package:filmscafe_task/widgets/custom_input.dart';
import 'package:filmscafe_task/widgets/rounded_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController fName = TextEditingController();
  final TextEditingController lName = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController aadhaar = TextEditingController();

  final FocusNode fNameFocus = FocusNode();
  final FocusNode lNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode aadhaarFocus = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: CustomInput(
                            title: "First Name",
                            ctrl: fName,
                            isObscure: false,
                            textInputType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            nextFocusNode: lNameFocus,
                            focusNode: fNameFocus,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          title: "Last Name",
                          ctrl: lName,
                          isObscure: false,
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          focusNode: lNameFocus,
                          nextFocusNode: emailFocus,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          title: "Email",
                          ctrl: _emailCtrl,
                          isObscure: false,
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          focusNode: emailFocus,
                          nextFocusNode: passwordFocus,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          isObscure: true,
                          title: "Password",
                          ctrl: _passwordCtrl,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          focusNode: passwordFocus,
                          nextFocusNode: phoneFocus,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          title: "Phone",
                          ctrl: phone,
                          isObscure: false,
                          textInputType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                          focusNode: phoneFocus,
                          nextFocusNode: aadhaarFocus,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomInput(
                          title: "Aadhaar ID",
                          ctrl: aadhaar,
                          isObscure: false,
                          textInputType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          focusNode: aadhaarFocus,
                          nextFocusNode: FocusNode(canRequestFocus: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RoundedButton(
                  bWidth: MediaQuery.of(context).size.width / 1.5,
                  bFunction: () {
                    AuthHelper().signUpEmailPassword(
                      context,
                      _emailCtrl.text,
                      _passwordCtrl.text,
                    );
                  },
                  bText: "Sign Up",
                  textColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: MediaQuery.of(context).size.width / 4.5,
                ),
                child: Row(
                  children: [
                    const Text(
                      "Have an account ? ",
                      style: TextStyle(
                        // color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Log-in",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
