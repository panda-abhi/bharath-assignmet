import 'package:flutter/material.dart';
import 'package:ygo/dummy_data.dart';
import 'package:ygo/screens/product_detail_screen.dart';

class ProductsListShop extends StatelessWidget {
  const ProductsListShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: DUMMY_PRODUCTS
          .map(
            (prod) => productlistshopItem(
              prod.imageUrl,
              prod.title,
              prod.amount,
              context,
              prod.productid,
            ),
          )
          .toList(),
    );
  }

  Widget productlistshopItem(
    String imageUrl,
    String title,
    int amount,
    context,
    String productid,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductDetailScreen.routeName, arguments: productid);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 5,
          child: Container(
            height: 270,
            width: 170,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffE34545),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          '20%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imageUrl,
                    height: 120,
                    width: 90,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '30 gms',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff919191),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ' Rs $amount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    // height: 20,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE2E2E2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          'ADD',
                          style: TextStyle(
                              color: Color(0xff002543),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
