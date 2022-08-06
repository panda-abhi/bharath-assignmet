import 'package:flutter/cupertino.dart';

class Products {
  final String imageUrl;
  final String title;
  final String description;
  final Color color;
  final int amount;
  final String productid;

  const Products({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.color,
    required this.amount,
    required this.productid,
  });
}
