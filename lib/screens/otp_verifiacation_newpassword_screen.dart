import 'package:flutter/material.dart';
import '../screens/create_newpassword_screen.dart';

class OTPVerificationNewPass extends StatelessWidget {
  static const routeName = 'OTP-pass-screen';
  const OTPVerificationNewPass({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'OTP VERIFICATION',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enter OTP  ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff002543),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' sent to +91 1234567890',
                          style: TextStyle(
                            color: Color(0xff919191),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      otpBox(context),
                      otpBox(context),
                      otpBox(context),
                      otpBox(context),
                      otpBox(context),
                      otpBox(context),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'OTP expires in ',
                          style: TextStyle(
                            color: Color(0xff919191),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '00:45 secs',
                          style: TextStyle(
                            color: Color(0xffFF3F3F),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Did not Recive OTP? ',
                        style: TextStyle(
                          color: Color(0xff919191),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'RESEND OTP',
                          style: TextStyle(
                            color: Color(0xffFF3F3F),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(
                            CreateNewPassScreen.routeName);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff002543),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25
                                //MediaQuery.of(context).size.height * 0.0625),
                                ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width * 0.3,
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

  Widget otpBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.075,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        color: Color(0xffEBEBEB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
      ),
    );
  }
}
