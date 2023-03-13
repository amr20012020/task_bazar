import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_bazar/shared/widgets/card.dart';

import '../../shared/styles/colors.dart';
import '../../shared/widgets/default_button.dart';
import '../../shared/widgets/inputField.dart';
import '../../shared/widgets/navToLogin.dart';
import '../register/loginScreen.dart';
import '../register/signUpScreen.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {


  String _selectedType = 'اختر قسم الاعلان';
  String _selectedCountry = 'الكويت';
  String _selectedGovernorate = 'حولي';
  String _selectedPhone = "97244282";
  String _selectedRegion = 'حولي';

  List<String> typesSeller = [
    'هواتف',
    'لابات',
    'كمبيوترات',
    'العاب',
  ];


  List<String> Country = [
    'مصر',
    'الكويت',
    'الامارات',
    'السعوديه',
  ];

  List<String> governorate = [
    'القاهره',
    'قنا',
    'طنطا',
    'غربيه',
  ];

  List<String> region = [
    'امبابه',
    'المحله',
    'الخانكه',
    'الزيتون',
  ];

  String? type;
  bool isSwitched1 = false;
  bool isSwitched2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("اضافه اعلان"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*Image.asset("assets/images/BAZAR-20.png"),
                  Text(
                    "تسجيل حساب",
                    style: TextStyle(color: colorBlue, fontSize: 20),
                  ),*/
                  NewsCard(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "يجب ان لايزيد العنوان عن 5 كلمات",
                            style: TextStyle(color: Colors.red),
                          ),
                          Text(
                            "عنوان الاعلان",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: const TextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.right,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: '* عنوان الاعلان ',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "ما الذي تريد بيعه؟",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: const TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'اختر قسم الاعلان ',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
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
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              underline: Container(
                                height: 0,
                              ),
                              style: const TextStyle(color: Colors.red),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGovernorate = newValue!;
                                });
                              },
                            ),

                          ],
                        ),
                      ),),
                      Expanded(child: InputField(
                        title: "الدوله",
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
                      ),),
                    ],
                  ),
                  Row(
                    children: [
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
                    children:[
                      Text(
                        "وصف الاعلان",
                        style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.text,
                          minLines: 1,
                          maxLines: 8,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'يرجي كتابه تفاصيل الاعلان بشكل واضح ',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 19.3.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[
                      Text(
                        "سعر الاعلان",
                        style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: const TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.text,
                          minLines: 1,
                          maxLines: 8,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'سعر البيع او الايجار ',
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[
                      Text(
                        "نوع الاعلان",
                        style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: RadioListTile(
                                  title: Text("تبرع"),
                                  contentPadding: EdgeInsets.all(0.0),
                                  value: "تبرع",
                                  groupValue: type,
                                  onChanged: (value) {
                                    setState(() {
                                      type = value.toString();
                                    });
                                  },
                                ),
                              )),
                          SizedBox(
                            width: 17.w,
                          ),
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: RadioListTile(
                                  title: Text("ايجار"),
                                  contentPadding: EdgeInsets.all(0.0),
                                  value: "ايجار",
                                  groupValue: type,
                                  onChanged: (value) {
                                    setState(() {
                                      type = value.toString();
                                    });
                                  },
                                ),
                              )),
                          SizedBox(
                            width: 17.w,
                          ),
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: RadioListTile(
                                  title: Text("بيع"),
                                  contentPadding: EdgeInsets.all(0.0),
                                  value: "بيع",
                                  groupValue: type,
                                  onChanged: (value) {
                                    setState(() {
                                      type = value.toString();
                                    });
                                  },
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 24.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "يجب ان تكون وسيله الاتصال واحده مفعله علي الاقل",
                            style: TextStyle(color: Colors.red,fontSize: 10.sp),
                          ),
                          Text(
                            "الاتصال",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.sp),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.right,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'رقم الهاتف',
                            suffixIcon: Icon(Icons.phone),
                            prefixIcon: Switch(
                                value: isSwitched1,
                                onChanged: (value){
                                  isSwitched1 = value;
                                  print(isSwitched1);
                                  setState(() {

                                  });
                                }),
                            hintStyle: const TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.right,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'واتساب',
                            suffixIcon: Icon(Icons.whatsapp),
                            prefixIcon: Switch(
                                value: isSwitched2,
                                onChanged: (value){
                                  isSwitched2 = value;
                                  print(isSwitched2);
                                  setState(() {

                                  });
                                }),
                            hintStyle: const TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){}, child: Text("لا")),
                          TextButton(onPressed: (){}, child: Text("نعم")),
                          Text("رقم اضافي للتواصل",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 60.h,
                        child: const TextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.right,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(8),
                            hintText: 'رقم الهاتف',
                            suffixIcon: Icon(Icons.phone),
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  DefaultButton(
                      text: "اضافه اعلان",
                      press: (){}
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
