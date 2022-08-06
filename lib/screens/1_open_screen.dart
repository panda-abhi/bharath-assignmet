import 'package:flutter/material.dart';
import '2_welcome_screen_number.dart';

class OpenLogoScreen extends StatelessWidget {
  static const routeName = 'open_screen';
  const OpenLogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001933),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(WelcomeScreen.routeName);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/ygo_darkblue.png'),
              SizedBox(height: 30),
              Text(
                'YGO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
