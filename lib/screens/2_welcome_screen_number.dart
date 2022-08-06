import 'package:flutter/material.dart';
import '3_login_Screen_password.dart';
import './create_account_screen.dart';
//import '../widgets/signup_widget.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = 'signupScreen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  String _userName = '';
  String _userNumber = '';
  bool trigger = false;

  void _submittedData() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context)
        .unfocus(); //to ensure keyboard always closes after next
    if (isValid) {
      _formKey.currentState!.save();
      trigger = true;
      print(_userName);
      print(_userNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001933),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.575,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/images/ygo_darkblue.png'),
                    Text(
                      'YGO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WELCOME',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff002543),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          'WhY you GO when we come?',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 25),
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || value.length != 10) {
                                return 'Please enter a valid Mobile Number';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: '+91 Mobile Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onSaved: (value) {
                              _userNumber = value.toString();
                            },
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  _submittedData();
                                  if (trigger == true) {
                                    Navigator.of(context)
                                        .pushReplacement(_createRoute());
                                  }
                                  return null;
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.06,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                    color: Color(0xff002543),
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height * 0.03,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    CreateAccountScreen.routeName);
                              },
                              child: Text('Sign Up'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          LoginScreenPass(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
