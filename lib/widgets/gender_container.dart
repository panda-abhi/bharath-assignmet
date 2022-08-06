import 'package:flutter/material.dart';

const activeContainerColor = Color.fromRGBO(0, 37, 67, 1.0);
const inactiveContainerColor = Color.fromRGBO(0, 37, 67, 0.4);

class GenderContainer extends StatefulWidget {
  const GenderContainer({Key? key}) : super(key: key);

  @override
  _GenderContainerState createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  Color maleContainerColor = inactiveContainerColor;
  Color femaleContainerColor = inactiveContainerColor;
  Color transContainerColor = inactiveContainerColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleContainerColor == inactiveContainerColor) {
        maleContainerColor = activeContainerColor;
        femaleContainerColor = inactiveContainerColor;
        transContainerColor = inactiveContainerColor;
      } else {
        maleContainerColor = inactiveContainerColor;
      }
    } else if (gender == 2) {
      if (femaleContainerColor == inactiveContainerColor) {
        femaleContainerColor = activeContainerColor;
        transContainerColor = inactiveContainerColor;
        maleContainerColor = inactiveContainerColor;
      } else {
        femaleContainerColor = inactiveContainerColor;
      }
    } else if (gender == 3) {
      if (transContainerColor == inactiveContainerColor) {
        transContainerColor = activeContainerColor;
        femaleContainerColor = inactiveContainerColor;
        maleContainerColor = inactiveContainerColor;
      } else {
        transContainerColor = inactiveContainerColor;
      }
    } else {
      transContainerColor = inactiveContainerColor;
      femaleContainerColor = inactiveContainerColor;
      maleContainerColor = inactiveContainerColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * 0.18),
        GestureDetector(
          onTap: () {
            setState(() {
              updateColor(2);
            });
          },
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Card(
                      child: Image.asset(
                        'assets/images/female.png',
                        color: femaleContainerColor,
                        colorBlendMode: BlendMode.dstIn,
                      ),
                    ),
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                      color:femaleContainerColor,
                    ),
                  ),
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              updateColor(1);
            });
          },
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Card(
                      child: Image.asset(
                        'assets/images/male.png',
                        color: maleContainerColor,
                        colorBlendMode: BlendMode.dstIn,
                      ),
                    ),
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: maleContainerColor,
                    ),
                  ),
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              updateColor(3);
            });
          },
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    child: Image.asset(
                      'assets/images/female.png',
                      color: transContainerColor,
                      colorBlendMode: BlendMode.dstIn,
                    ),
                  ),
                ),
                Text(
                  'Transgender',
                  style: TextStyle(fontSize: 12,
                    color: transContainerColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.18),
      ],
    );
  }
}
