// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:order_food_mobile/constants/colors.dart';
import 'package:order_food_mobile/constants/string.dart';
import 'package:order_food_mobile/constants/styles.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imgProfile),
      ),
      title: Text("Septio Dwi",
          style: TextStyles.heading8.copyWith(color: MainColors.white)),
      subtitle: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 16,
            color: Colors.white,
          ),
          Text(
            "Cibatok, Kab.Bogor",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
      trailing: Container(
        // color: Colors.amber,
        child: Image.asset(
          iconNotif,
          width: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
