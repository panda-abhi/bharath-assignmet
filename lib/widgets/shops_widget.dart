import 'package:flutter/material.dart';
import 'package:ygo/screens/shops_screen.dart';
import '../dummy_data.dart';

class ShopsWidget extends StatelessWidget {
  const ShopsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: DUMMY_SHOPS
          .map(
            (shopdata) => shopItem(
              shopdata.imageUrl,
              shopdata.title,
              shopdata.description,
              context,
              shopdata.id,
            ),
          )
          .toList(),
    );
  }

  Widget shopItem(String imageUrl, String title, String description,
      BuildContext context, String id) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ShopsScreen.routeName, arguments: id);
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
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4E4E4E),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(Icons.star),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff919191),
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
}
