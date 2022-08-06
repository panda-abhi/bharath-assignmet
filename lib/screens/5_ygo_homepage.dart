import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ygo/screens/favorites_screen.dart';
import 'package:ygo/screens/my_list_screen.dart';
import 'package:ygo/screens/orders_screen.dart';
import 'package:ygo/screens/shops_list_screen.dart';
import 'package:ygo/screens/tabs_screen.dart';
import 'package:ygo/widgets/combos_list_widget.dart';
import 'package:ygo/widgets/shops_widget.dart';
import 'package:ygo/widgets/special_offers_widget.dart';
import '../widgets/categories.dart';
import '../widgets/searchbar.dart';
import '../widgets/location.dart';
import '../widgets/offers.dart';
import '../widgets/deals.dart';
import '../widgets/my_list_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'hoome-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late List<Map<String, Object>> _pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color(0xff002543),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.220,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.article_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'YGO',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SearchBar(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      child: Location(),
                    ),
                  ],
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height * 0.775,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Categories(),
                    SizedBox(height: 15),
                    Deals(),
                    MyListWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xffEBEBEB)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 30),
                              child: Text(
                                'Deals Of The Day!',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff002543),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text('View all'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_right_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      //padding: EdgeInsets.only(left: 20,right:20),
                      height: 275,
                      width: double.infinity,
                      child: Dealsoftheday(),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xffEBEBEB)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 30),
                              child: Text(
                                'Shops Near You',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff002543),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text('View all'),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  ShopsListScreen.routeName,
                                );
                              },
                              icon: Icon(Icons.arrow_right_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 275,
                      width: double.infinity,
                      child: ShopsWidget(),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xffEBEBEB)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 30),
                              child: Text(
                                'Combos of the Day',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff002543),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text('View all'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_right_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: 150,
                        width: double.infinity,
                        child: CombosWidget()),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xffEBEBEB)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, bottom: 10, right: 30),
                              child: Text(
                                'Special Offer Zone',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff002543),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text('View all'),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_right_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SpecialOffers(),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
