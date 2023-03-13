import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'default_button.dart';


class NewsCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Image.asset("assets/images/upload-cloud.png"),
            Text(
              "الصور تجذب الاهتمام لاعلانك",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "يمكنك تحميل 5 صور او فيديو كحد اقصي",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            DefaultButton(
                text: "اختر الصور",
                press: (){}
            ),
          ],
        ),
      ),
    );
  }
}