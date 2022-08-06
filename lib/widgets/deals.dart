import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ygo/dummy_data.dart';

class Dealsoftheday extends StatelessWidget {
  const Dealsoftheday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: DUMMY_PRODUCTS
            .map((prodData) => productItem(prodData.color, prodData.imageUrl,
                prodData.title, prodData.description))
            .toList());
  }

  Widget productItem(
      Color color, String image, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(fontSize: 10),
                ),
              ),
              //SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    color: Color(0xff08B3E5),
                  ),
                  Text(
                    'Ends in 4:00 hours!!',
                    style: TextStyle(color: Color(0xff08B3E5)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
