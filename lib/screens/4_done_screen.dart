import 'package:flutter/material.dart';
import 'tabs_screen.dart';

class DoneScreen extends StatelessWidget {
  static const routeName = 'Done-Screen';
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002543),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Done_Circle.png',
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.44,
              ),
              SizedBox(height: 150),
              Text(
                'Done!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Tap To Strat Shopping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
