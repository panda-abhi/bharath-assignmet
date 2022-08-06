import 'package:flutter/material.dart';

class MyListWidget extends StatelessWidget {
  const MyListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/images/Mylist.png'),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xff293754),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Create List',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
