import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 40,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10),),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search Your Product Here',
                    labelStyle: TextStyle(
                      color: Color(0xffA9BEC5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
