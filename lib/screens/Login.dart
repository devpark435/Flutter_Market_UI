import 'package:flutter/material.dart';
import '../Assets/Palette.dart';
import '../screens/SingUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String Id = '';
  String Pw = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Palette.mainBgColor),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'MargetLogo',
            style: Styles.logoText,
          ),
          LoginContainer('ID', Id),
          LoginContainer('PW', Pw),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: 130,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Palette.mainBgColor,
                    borderRadius: BorderRadius.circular(25),
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
                  ),
                  child: Text(
                    'Log In',
                    style: Styles.loginText,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                child: Container(
                  width: 130,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Palette.mainBgColor,
                    borderRadius: BorderRadius.circular(25),
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
                  ),
                  child: Text(
                    'Sign Up',
                    style: Styles.loginText,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => SignUp())));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget LoginContainer(text, object) {
  return Container(
    width: 300,
    height: 80,
    alignment: Alignment.center,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Palette.mainBgColor,
      borderRadius: BorderRadius.circular(25),
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
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: Styles.hintText),
        onChanged: (value) {
          object = value;
        },
      ),
    ),
  );
}
