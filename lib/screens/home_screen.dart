// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:order_food_mobile/constants/colors.dart';
import 'package:order_food_mobile/constants/string.dart';
import 'package:order_food_mobile/widgets/card_discount.dart';
import 'package:order_food_mobile/widgets/card_recommendation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(imgProfile),
                    ),
                    title: Text(
                      "Septio Dwi",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
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
                  ),
                  SizedBox(height: 10),
                  CarouselSlider(
                    items: imgList
                        .map((item) => Container(
                              width: width,
                              height: 150,
                              // margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage(imgSlider),
                                    fit: BoxFit.cover),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        height: 150,
                        aspectRatio: 9 / 16,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        // autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: (index, reason) {
                          int current = 0;
                          setState(() {
                            current = index;
                          });
                        }),
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
                        Column(
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
                                iconFood,
                                height: 26,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Panganan",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
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
                                iconDrink,
                                height: 26,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Ngombe",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
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
                                iconJajan,
                                height: 26,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Jajanan",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
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
                                iconMore,
                                height: 26,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Kabeh",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
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
