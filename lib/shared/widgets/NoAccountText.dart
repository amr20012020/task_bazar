import 'package:flutter/material.dart';
import 'package:task_bazar/shared/styles/colors.dart';

import '../../screens/register/signUpScreen.dart';

class NoAccountText extends StatelessWidget {
   NoAccountText({
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
          onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen())),
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