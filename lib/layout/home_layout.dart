import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_bazar/screens/bazarStore/bazarStore.dart';
import 'package:task_bazar/screens/home/addProduct.dart';
import 'package:task_bazar/screens/home/homeScreen.dart';
import 'package:task_bazar/screens/lists/listScreen.dart';
import 'package:task_bazar/screens/profile/profileScreen.dart';
import 'package:task_bazar/shared/widgets/CustomSearchTextField.dart';

import '../shared/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  String? selectedValue;
  int currentIndex = 0;

  List<String> Countries = [
    "الكويت",
    "مصر",
    "الاردن",
    "العراق",
    "الامارات",
    "السعوديه",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: IconButton(
            onPressed: (){},
            icon: Icon(Icons.notification_add_sharp)),
        appBar: AppBar(
          toolbarHeight: 90,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.orange,
            systemNavigationBarDividerColor: Colors.orange,
            statusBarColor: Colors.orange,
          ),
          title: DropdownButtonHideUnderline(
            child: DropdownButton(
              items: Countries.map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )).toList(),
              value: selectedValue,
              onChanged: (value){
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              CustomSearchTextField(),
            ],
          ),
          actions: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.notification_add_sharp)),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const StadiumBorder(
            side: BorderSide(
              color: Colors.blue,
              width: 3,
            ),
          ),
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>AddProduct()));
          },
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 60,
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            selectedIconTheme: IconThemeData(color: primaryColor),
            unselectedIconTheme: IconThemeData(color: Colors.black),
            unselectedItemColor: Colors.black,
            elevation: 0.0,
            currentIndex: currentIndex,
            onTap: (index){
              currentIndex = index;
              print(index);
              setState(() {

              });
            },
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: ImageIcon(AssetImage("assets/images/user.png"),size: 30,color: darkPrimary,),
                  label: "حسابي"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/shop.png"),size: 30,color: darkPrimary,),
                  label: "سوق بازار"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/list.png"),size: 30,color: darkPrimary,),
                  label: "الاقسام"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/bx-home-smile.png"),size: 30,color: darkPrimary,),
                  label: "الرئيسيه"
              ),
            ],
          ),
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}

List<Widget> tabs = const [
  ProfileScreen(),
  BazarStore(),
  ListScreen(),
  HomeScreen(),
];
