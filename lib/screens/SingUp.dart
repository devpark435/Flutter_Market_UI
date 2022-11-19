import 'package:flutter/material.dart';
import '../assets/Palette.dart';
import '../screens/Login.dart';
import '../main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String SignUpId = '';
  String SignUpPw = '';
  String SignUpCheck = '';
  String SignUpEmail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign Up',
            style: Styles.logoText,
          ),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginContainer('ID', SignUpId),
                LoginContainer('Password', SignUpPw),
                LoginContainer('Password Check', SignUpCheck),
                LoginContainer('E-mail Address', SignUpEmail),
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Palette.mainBgColor,
                      boxShadow: [
                        BoxShadow(
                          color: Palette.categoryShadowColor,
                          offset: Offset(
                            0,
                            2.0,
                          ),
                          blurRadius: 2.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    'Sign Up',
                    style: Styles.loginText,
                  ),
                )
              ],
            )));
  }
}
