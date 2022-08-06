import 'package:flutter/material.dart';
import 'locateMe.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: Colors.red,
        ),
        LocationME(),
      ],
    );
  }
}
