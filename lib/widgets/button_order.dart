// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonOrder extends StatelessWidget {
  const ButtonOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 14,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: Color(0xff553100),
          textStyle: TextStyle(color: Colors.white, fontSize: 12),
        ),
        label: Text(
          "Pesen saiki",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
