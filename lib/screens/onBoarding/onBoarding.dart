import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/styles/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key,required this.images,required this.title}) : super(key: key);

  final String images, title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(images,alignment: Alignment.center,height: 350.h,),
          ),




        ],
      ),
    );
  }
}


