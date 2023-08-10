// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:order_food_mobile/constants/string.dart';
import 'package:order_food_mobile/widgets/button_order.dart';

class CardDiscount extends StatelessWidget {
  const CardDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            // height: 120,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xffFFD294),
                  Color(0xffC97603),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 108,
                  width: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(imgDiskon), fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox.shrink(),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.bottomCenter,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xffFF0000)),
                        child: Text(
                          "Promo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paket Murah !",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Nasi + Ayam + Sayur Asem",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp 25.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: -1,
                              color: Colors.white),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Rp 40.000",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    ButtonOrder(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
