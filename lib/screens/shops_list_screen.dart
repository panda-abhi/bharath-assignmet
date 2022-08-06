import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ygo/screens/shops_screen.dart';

import '../dummy_data.dart';
import '../widgets/searchbar.dart';
import '../widgets/categories.dart';

class ShopsListScreen extends StatefulWidget {
  static const routeName = 'Shops';
  const ShopsListScreen({Key? key}) : super(key: key);

  @override
  State<ShopsListScreen> createState() => _ShopsListScreenState();
}

class _ShopsListScreenState extends State<ShopsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff002543),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Color(0xff002543),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(TabsScreen.routeName);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
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
          ),
          SizedBox(height: 10),
          Text(
            'Shop List',
            style: TextStyle(
              fontSize: 28,
              // fontWeight: FontWeight.bold,
              color: Color(0xff002543),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          Categories(),
          Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: DUMMY_SHOPS
                  .map((shopData) => shopListItem(
                        shopData.imageUrl,
                        shopData.title,
                        shopData.description,
                        context,
                        shopData.id,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget shopListItem(
  String imageUrl,
  String title,
  String description,
  BuildContext ctx,
  String id,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        Navigator.of(ctx).pushNamed(
          ShopsScreen.routeName,
          arguments: id,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageUrl,
                height: 200,
                width: 380,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                    Icon(Icons.star),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff919191),
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
