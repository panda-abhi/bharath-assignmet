import 'package:flutter/material.dart';
import '../screens/4_done_screen.dart';
import '../screens/password_reset_screen.dart';
//import '../screens/tabs_screen.dart';

class LoginScreenPass extends StatefulWidget {
  static const routeName = 'otpScreen';

  @override
  State<LoginScreenPass> createState() => _LoginScreenPassState();
}

class _LoginScreenPassState extends State<LoginScreenPass> {
  final _formKey = GlobalKey<FormState>();
  String _pass = '';
  bool trigger = false;

  void _submittedData() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context)
        .unfocus(); //to ensure keyboard always closes after next
    if (isValid) {
      _formKey.currentState!.save();
      trigger = true;
      print(_pass);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff002543),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            color: Color(0xff002543),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.335,
                    child: Image.asset(
                      'assets/images/logoandname.png',
                      height: 175,
                      width: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.665,
                    width: double.infinity,
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
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Hi HARIPRASAD!',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 40, right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Form(
                                key: _formKey,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter the correct Password';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onSaved: (value) {
                                    _pass = value.toString();
                                  },
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                      PasswordResetScreen.routeName);
                                },
                                child: Text(
                                  'Forgot password?',
                                  style: TextStyle(color: Color(0xff002543)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              _submittedData();
                              if (trigger == true) {
                                Navigator.of(context)
                                    .pushReplacementNamed(DoneScreen.routeName);
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
