// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    required this.imageUrl,
    required this.title,
    this.onTap,
  });

  final String imageUrl, title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xff553100),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imageUrl,
              height: 26,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
