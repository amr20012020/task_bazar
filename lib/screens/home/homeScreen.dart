import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_bazar/models/product.dart';
import 'package:task_bazar/screens/home/productListView.dart';
import 'package:task_bazar/shared/widgets/size_config.dart';

import '../../models/user.dart';
import '../../shared/styles/colors.dart';
import '../../shared/widgets/section_title.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


final List<Product> productList = [
  Product(
    imageProduct: "assets/images/product.png",
    textProduct: "بوفيه مفتوح",
    subTitleProduct: "افضل الطبقات",
  ),
  Product(
    imageProduct: "assets/images/mask.png",
    textProduct: "عطور الملكه",
    subTitleProduct: "اجود انواع العطور",
  ),
  Product(
    imageProduct: "assets/images/product.png",
    textProduct: "صالون مفتوح",
    subTitleProduct: "افضل الطبقات",
  ),
];

final List<User> userList = [
  User(
    imageUser: "assets/images/user1.png",
    textUser: "الاعلانات",
    backGround: Colors.blue,
  ),
  User(
    imageUser: "assets/images/computereng.png",
    textUser: "الدليل",
    backGround: Colors.red,
  ),
  User(
    imageUser: "assets/images/doctor.png",
    textUser: "الطبي",
    backGround: Colors.blueAccent,
  ),
  User(
    imageUser: "assets/images/cooker.png",
    textUser: "مطاعم",
    backGround: Colors.green,
  ),
  User(
    imageUser: "assets/images/user1.png",
    textUser: "الطبي",
    backGround: Colors.red,
  ),
  User(
    imageUser: "assets/images/user1.png",
    textUser: "الطبي",
    backGround: Colors.red,
  ),


];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children:
            [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70.h/*(MediaQuery.of(context).size.height / 2) - 300.0*/, //60
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                      children: [
                        ...userList.map((e) {
                          return userType(e);
                        }).toList(),
                      ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'اعلانات مميزه',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 178.h/*(MediaQuery.of(context).size.height / 2) - 160.0*/,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 10.0,
                height: 225.0.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...productList.map((e) {
                      return _buildProductItem(e);
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'احدث الاعلانات ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 178.h/*(MediaQuery.of(context).size.height / 2) - 160.0*/,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 10.0,
                height: 225.0.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...productList.map((e) {
                      return _buildProductItem(e);
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'متاجر مميزه',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 178.h/*(MediaQuery.of(context).size.height / 2) - 160.0*/,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 10.0,
                height: 225.0.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...productList.map((e) {
                      return _buildProductItem(e);
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget userType(User personList){
    return SizedBox(
      width: 90.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: personList.backGround,
          ),
          //height: 100,
          //width: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Center(child: Text(personList.textUser.toString(),style: const TextStyle(fontSize: 10,color: Colors.white),)),
                  Image.asset(personList.imageUser.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(Product pItem) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
          ),
          //height: 178.0,
          width: 241.0.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Hero(
                      tag: pItem.imageProduct.toString(),
                      child: Container(
                        width: 241.0.w,
                        height: 116.0.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(pItem.imageProduct!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: Text(
                  pItem.textProduct!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                child: Text(
                  pItem.subTitleProduct!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget newAchivesAndViewMore(String text){
  return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){

          },
          child: Text("المزيد",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        Text(
          text,
        ),
      ],
    ),
  );
}







/*class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.press,
  }) : super(key: key);

  final String title,subtitle, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$subtitle"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/

