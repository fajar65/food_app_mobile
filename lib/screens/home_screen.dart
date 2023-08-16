// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:order_food_mobile/constants/colors.dart';
import 'package:order_food_mobile/constants/string.dart';
import 'package:order_food_mobile/widgets/card_category.dart';
import 'package:order_food_mobile/widgets/card_discount.dart';
import 'package:order_food_mobile/widgets/card_recommendation.dart';
import 'package:order_food_mobile/widgets/header_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MainColors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: MainColors.grey,
        selectedItemColor: MainColors.secondary,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.vertical_split_outlined), label: "Paket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.discount_outlined, color: MainColors.white),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.discount_outlined), label: "Promo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
        onTap: (index) {
          _incrementTab(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MainColors.primary,
        onPressed: () {
          _incrementTab(1);
        },
        tooltip: 'Increment',
        child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffFFD294), Color(0xffC97603)])),
            child: Icon(Icons.shopping_bag)),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgHeader), fit: BoxFit.fill),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  HeaderProfile(),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20 - 10),
                      child: Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              width: width - 40,
                              height: 150,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage(imgSlider),
                                    fit: BoxFit.cover),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Babagan panganan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // for (int i = 0; i < 4; i++)
                        CardCategory(imageUrl: iconFood, title: "Panganan"),
                        CardCategory(imageUrl: iconDrink, title: "Ngombe"),
                        CardCategory(imageUrl: iconJajan, title: "Jajanan"),
                        CardCategory(imageUrl: iconMore, title: "Kabeh"),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Diskon liyane!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Kabeh",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff995900),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < 4; i++) CardDiscount(),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rekomendasi Panganan",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Kabeh",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff995900),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20, top: 5),
                      child: Row(
                        children: [
                          for (int i = 0; i < 4; i++) CardRecommendation(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
