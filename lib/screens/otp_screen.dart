import 'package:flutter/material.dart';
import '../screens/tabs_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Color(0xff002543),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                //width: double.infinity,
                child: Image.asset(
                  'assets/images/logoandname.png',
                  height: 175,
                  width: 250,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'OTP VERIFICATION',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        otpBox(context),
                        otpBox(context),
                        otpBox(context),
                        otpBox(context),
                        otpBox(context),
                        otpBox(context),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
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
                          Navigator.of(context)
                              .pushReplacementNamed(TabsScreen.routeName);
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
            ],
          ),
        ),
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
