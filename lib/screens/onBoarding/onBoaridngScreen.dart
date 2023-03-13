import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_bazar/screens/onBoarding/onBoaridngScreen.dart';
import 'package:task_bazar/screens/register/loginScreen.dart';

import '../../layout/home_layout.dart';
import '../../shared/styles/colors.dart';
import 'onBoarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  //int pageIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child:  PageView.builder(
                  itemBuilder: (context, index) => const OnBoarding(
                    images: "assets/images/onBoarding.png",
                    title: "Hello",
                  ),
                ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const WormEffect(
                  spacing: 16,
                  dotColor: Colors.black,
                  activeDotColor: Colors.orange,
                ),
                onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26.0,left: 93,right: 93),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    backgroundColor: colorBlue,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
                  },
                  child: Text(
                    "الذهاب لحساب العميل",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 26,right: 26),
              child: SizedBox(
                width: double.infinity,
                height: 50.h,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    backgroundColor: primaryColor,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeLayout()));
                  },
                  child: Text(
                    "المتابعه الي البازار",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
           SizedBox(
             height: 17,
           ),
           /* InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                //padding: EdgeInsets.all(kDefaultPadding * 0.75),
                decoration: BoxDecoration(
                  color: colorBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Text(
                  "الذهاب لحساب العميل",
                  style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}