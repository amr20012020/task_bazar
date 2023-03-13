import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
class ProductCard extends StatelessWidget {



  List<Product> ProductList = [
    Product(
        imageProduct: 'assets/images/product.png',
        textProduct: 'بوفيه مفتوح افطار يومي',
        subTitleProduct: 'افضل الطبخات العربيه',
    ),
    Product(
      imageProduct: 'assets/images/product.png',
      textProduct: 'بوفيه مفتوح افطار يومي',
      subTitleProduct: 'افضل الطبخات العربيه',
    ),
    Product(
      imageProduct: 'assets/images/product.png',
      textProduct: 'بوفيه مفتوح افطار يومي',
      subTitleProduct: 'افضل الطبخات العربيه',
    ), Product(
      imageProduct: 'assets/images/product.png',
      textProduct: 'بوفيه مفتوح افطار يومي',
      subTitleProduct: 'افضل الطبخات العربيه',
    ),
  ];


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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              height: 180,
              placeholder: (context, url) => Center(child: CircularProgressIndicator(color: Colors.green,)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Text(
               "بوفيه مفتوح افطار يومي"??"",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "افضل التطبيقات العربيه" ?? "",
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade500
              ),
            ),
          ],
        ),
      ),
    );
  }
}