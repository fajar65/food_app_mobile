// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:order_food_mobile/constants/colors.dart';
import 'package:order_food_mobile/constants/string.dart';

class CardRecommendation extends StatelessWidget {
  const CardRecommendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8),
      width: 150,
      // height: 240,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: MainColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(-2, 5),
              spreadRadius: 2,
              blurRadius: 7,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 105,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage(imgRujak), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Rujak Cingur Jawa",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 2),
          Text(
            "Rp 20.000",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.6,
              color: MainColors.green,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 14,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                backgroundColor: Color(0xff553100),
                textStyle: TextStyle(color: Colors.white, fontSize: 12),
              ),
              label: Text(
                "Pesen saiki",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
