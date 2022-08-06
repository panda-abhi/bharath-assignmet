import 'package:flutter/material.dart';
import 'package:ygo/screens/grocery_shops_list_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          categoryItem(
            context,
            Image.asset(
              'assets/images/Category1.png',
              fit: BoxFit.cover,
            ),
            'Grocery',
          ),
          categoryItem(
            context,
            Image.asset(
              'assets/images/Category2.png',
              fit: BoxFit.cover,
            ),
            'Stationary',
          ),
          categoryItem(
            context,
            Image.asset(
              'assets/images/Category3.png',
              fit: BoxFit.cover,
            ),
            'Bakery',
          ),
          categoryItem(
            context,
            Image.asset(
              'assets/images/Category4.png',
              fit: BoxFit.cover,
            ),
            'Services',
          ),
          categoryItem(
            context,
            Image.asset(
              'assets/images/Category5.png',
              fit: BoxFit.cover,
            ),
            'Food',
          ),
        ],
      ),
    );
  }

  Widget categoryItem(
    BuildContext ctx,
    Image image,
    String text,
  ) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      width: 80,
      child: GestureDetector(
        onTap: () {
          Navigator.of(ctx).pushNamed(GroceryShopListScreen.routeName);
        },
        child: Column(
          children: [
            Container(height: 50, width: 50, child: image),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
