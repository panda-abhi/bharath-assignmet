import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';

class CategoryViewAllScreen extends StatelessWidget {
  static const routeName = 'category-viewall';
  const CategoryViewAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text(
                      'Category 1',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(child: SearchBar()),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                  item(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        children: [
          Image.asset(
            'assets/images/Cupnoodles.png',
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Column(
            children: [],
          ),
          TextButton(
            onPressed: () {},
            child: Text('ADD'),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.1,
          ),
        ],
      ),
    );
  }
}
