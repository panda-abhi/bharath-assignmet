import 'package:flutter/material.dart';
import '../screens/2_welcome_screen_number.dart';


class PasswordDoneScreen extends StatelessWidget {
  static const routeName = 'password-done-screen';
  const PasswordDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage('assets/images/background.png'),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.335,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/logoandname.png',
                      height: 175,
                      width: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.4,
            right: MediaQuery.of(context).size.width * 0.45,
            top: MediaQuery.of(context).size.height * 0.3,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.cancel),
              iconSize: 44,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'assets/images/Done_Circle.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Text(
                    'PASSWORD CHANGED',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff002543),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SUCCESSFULLY!!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff002543),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff002543),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.2),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                               WelcomeScreen.routeName);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
