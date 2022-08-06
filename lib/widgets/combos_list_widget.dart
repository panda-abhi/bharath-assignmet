import 'package:flutter/material.dart';
import 'package:ygo/dummy_data.dart';

class CombosWidget extends StatelessWidget {
  const CombosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: DUMMY_COMBO
          .map((combowid) => comboItem(combowid.imageUrl, combowid.title,
              combowid.description, combowid.color))
          .toList(),
    );
  }

  Widget comboItem(
      String image, String title, String description, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(image),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff002543),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 10, color: Color(0xff868686)),
                ),
              ],
            ),
          )),
    );
  }
}
