import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_bazar/layout/home_layout.dart';
import 'package:task_bazar/shared/widgets/NoAccountText.dart';
import 'package:task_bazar/shared/widgets/default_button.dart';

import '../../shared/styles/colors.dart';
import '../../shared/widgets/defaultFormField.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "Login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();

  var passwordController = TextEditingController();
  bool _passwordObscured = true;

  @override
  void initState() {
    // TODO: implement initState
    _passwordObscured = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/BAZAR-20.png"),
                  Text("تسجيل الدخول",style: TextStyle(color: colorBlue,fontSize: 20),),
                  buildFormPhone(),
                  SizedBox(
                    height: 19,
                  ),
                 buildFormPassword(true),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text("نسيت كلمه السر",style: TextStyle(color: Colors.red),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        primary: Colors.white,
                        backgroundColor: primaryColor,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeLayout()));
                      },
                      child: Text(
                        "دخول",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  NoAccountText(register: 'سجل الان', askregister: 'ليس لديك حساب ؟',),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormPassword(bool _passwordVisible){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("كلمه السر",style: TextStyle(color: Colors.black,),),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: _passwordObscured,
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(Icons.password,color: primaryColor,),
              prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordObscured = !_passwordObscured;
                    // _passwordVisible =!_passwordVisible!;
                  });
                },
                icon :Icon(
                  _passwordObscured! ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              hintText: 'كلمه السر',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


Widget buildFormPhone(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text("رقم الهاتف",style: TextStyle(color: Colors.black),),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            suffixIcon: Icon(
              Icons.phone,
              color: primaryColor,
            ),
            hintText: '97244282',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ],
  );
}



void navigateHome(BuildContext context)async{
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeLayout()));
}
