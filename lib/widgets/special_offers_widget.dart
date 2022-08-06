import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFFD4DD),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/Street1.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'NETHAJI ROAD',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Witness jaw dropping offers in shops situated on the Nethaji road. Shop Now!',
                          style: TextStyle(fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff98EAEF),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'MG ROAD',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Witness jaw dropping offers in shops situated on the Nethaji road. Shop Now!',
                          style: TextStyle(fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 60,
                  // child: Image.asset('assets/images/Street.png'),
                  backgroundImage: AssetImage('assets/images/Street2.png'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffEBEBEB),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  // child: Image.asset('assets/images/Stationery.png'),
                  backgroundImage: AssetImage('assets/images/Street3.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'TANK STREET',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          'Witness jaw dropping offers in shops situated on the Nethaji road. Shop Now!',
                          style: TextStyle(fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff88CECE),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'BOSE BAZAR',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Witness jaw dropping offers in shops situated on the Nethaji road. Shop Now!',
                          style: TextStyle(fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/Street4.png'),
                  // child: Image.asset('assets/images/Pharmacy.png'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
