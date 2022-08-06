import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/searchbar.dart';
import '../widgets/products_shop_list_widget.dart';
import '../screens/categoryviewallscreen.dart';

class ShopsScreen extends StatelessWidget {
  static const routeName = 'Shops-screen';
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedShopId = DUMMY_SHOPS.firstWhere((shop) => shop.id == shopId);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      selectedShopId.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    left: 20,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.125,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedShopId.title,
                                  style: TextStyle(
                                      color: Color(0xff4E4E4E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  decoration: BoxDecoration(
                                    color: Color(0xff00812F),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4.3',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedShopId.description,
                                  style: TextStyle(
                                    color: Color(0xff919191),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF2EFEF),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later,
                                        size: 18,
                                        color: Color(0xff002543),
                                      ),
                                      Text(
                                        '30 mins',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff002543),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SearchBar(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category 1',
                    style: TextStyle(
                      color: Color(0xff4E4E4E),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(CategoryViewAllScreen.routeName);
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xff002543),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 270,
              child: ProductsListShop(),
            ),
            Divider(
              //thickness: 1,
              color: Color(0xff919191),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category 2',
                    style: TextStyle(
                      color: Color(0xff4E4E4E),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(CategoryViewAllScreen.routeName);
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xff002543),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 270,
              child: ProductsListShop(),
            ),
            Divider(
              // thickness: 1,
              color: Color(0xff919191),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category 3',
                    style: TextStyle(
                      color: Color(0xff4E4E4E),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(CategoryViewAllScreen.routeName);
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xff002543),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 270,
              child: ProductsListShop(),
            ),
            Divider(
              //thickness: 1,
              color: Color(0xff919191),
            ),
          ],
        ),
      ),
    );
  }
}
