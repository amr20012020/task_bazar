import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_bazar/shared/styles/theme_bottom_sheet.dart';
import 'package:task_bazar/shared/widgets/inputField.dart';
import 'package:task_bazar/shared/widgets/navToLogin.dart';

import '../../shared/styles/colors.dart';
import '../../shared/widgets/NoAccountText.dart';
import '../../shared/widgets/default_button.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  String _selectedCountry = 'الدوله';
  String _selectedGovernorate = 'حولي';
  String _selectedPhone = "97244282";
  String _selectedRegion = 'حولي';
  bool? _passwordVisible;
  List<String> Country = [
    'مصر',
    'الكويت',
    'الامارات',
    'السعوديه',
  ];

  List<String> governorate = [
    'القاهره',
    'الاسكندريه',
    'طنطا',
    'غربيه',
  ];

  List<String> region = [
    'امبابه',
    'كوبري القيه',
    'الخانكه',
    'الزيتون',
  ];

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
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
                  Text(
                    "تسجيل حساب",
                    style: TextStyle(color: colorBlue, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "الاسم كامل",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60,
                        child: const TextField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            suffixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            hintText: 'الاسم كامل',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "الدوله",
                        style: TextStyle(color: Colors.black),
                      ),
                      InputField(
                        title: "",
                        hint: '$_selectedCountry',
                        widget: Row(
                          children: [
                            DropdownButton(
                              dropdownColor: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                              items: Country
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Text(
                                    '$value',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ).toList(),
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              underline: Container(
                                height: 0,
                              ),
                              style: TextStyle(color: Colors.red),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedCountry = newValue!;
                                });
                              },
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(child: InputField(
                        title: "المحافظه",
                        hint: '$_selectedGovernorate',
                        widget: Row(
                          children: [
                            DropdownButton(
                              dropdownColor: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                              items: governorate
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Text(
                                    '$value',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ).toList(),
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              underline: Container(
                                height: 0,
                              ),
                              style: TextStyle(color: Colors.red),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGovernorate = newValue!;
                                });
                              },
                            ),

                          ],
                        ),
                      ),),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(child: InputField(
                        title: "المنطقه",
                        hint: '$_selectedRegion',
                        widget: Row(
                          children: [
                            DropdownButton(
                              dropdownColor: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                              items: region
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Text(
                                    '$value',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ).toList(),
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              underline: Container(
                                height: 0,
                              ),
                              style: TextStyle(color: Colors.red),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedRegion = newValue!;
                                });
                              },
                            ),

                          ],
                        ),
                      ),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "رقم الهاتف",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60,
                        child: const TextField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            suffixIcon: Icon(
                              Icons.phone,
                              color: primaryColor,
                            ),
                            hintText: 'رقم الهاتف',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  buildFormEmail(),
                  buildFormPassword(true),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: const[
                          Text(
                            ' الشروط و الاحكام',
                            style: TextStyle(
                              fontWeight:
                              FontWeight.w400,
                              color: primaryColor,
                              fontSize: 14,
                            ),
                          ),
                           Text(
                            'الموافقه عل',
                            style: TextStyle(
                              fontWeight:
                              FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),

                        ],

                      ),
                      Checkbox(
                        value: false, //cubit.registerIsChecked,
                        onChanged: (value) {
                          //cubit.registerRememberMe(value);
                        },
                      ),
                    ],
                  ),
                  DefaultButton(
                    text: "تسجيل",
                    press: (){
                      showAddTaskBottomSheet(context);
                    }
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  NavToLogin(register: 'سجل الان', askregister: 'هل لديك حساب بالفعل ؟',),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormPassword(bool obserText){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("كلمه السر",style: TextStyle(color: Colors.black),),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: obserText,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(Icons.password,color: primaryColor,),
              prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible =!_passwordVisible!;
                  });
                },
                icon: Icon(
                  _passwordVisible! ? Icons.visibility : Icons.visibility_off,
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

Widget buildFormEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text("البريد الالكتروني",style: TextStyle(color: Colors.black),),
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
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            suffixIcon: Icon(
              Icons.email,
              color: primaryColor,
            ),
            hintText: 'name@gmail.com',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ],
  );
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
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
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


void showAddTaskBottomSheet(BuildContext context){
  showModalBottomSheet(
      context: context,
      builder: (context){
        return ThemeBottomSheet();
      });
}
