import 'package:flutter/material.dart';
import 'package:ygo/dummy_data.dart';

class GroceryShopListScreen extends StatelessWidget {
  static const routeName = 'grocery-shops';
  const GroceryShopListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.cabin),
            Text('Grocery Shops'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: ListView(
        children: DUMMY_SHOPS
            .map(
              (shopdata) => groceryShopItem(
                  shopdata.imageUrl, shopdata.title, shopdata.description),
            )
            .toList(),
      ),
    );
  }

  Widget groceryShopItem(
    String imageUrl,
    String title,
    String description,
  ) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              child: Image.asset(
                imageUrl,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text(title),
            Text(description),
          ],
        )
      ],
    );
  }
}
