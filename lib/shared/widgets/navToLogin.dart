import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_bazar/screens/register/loginScreen.dart';

import '../../screens/register/signUpScreen.dart';
import '../styles/colors.dart';

class NavToLogin extends StatelessWidget {
  NavToLogin({
    Key? key,
    required this.register,
    required this.askregister,
  }) : super(key: key);

  String askregister;
  String register;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())),
          child: Text(
            register,
            style: TextStyle(
                fontSize: 15,
                color: primaryColor),
          ),
        ),
        Text(
          askregister,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}