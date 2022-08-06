import 'package:flutter/material.dart';
import '../screens/otp_verifiacation_newpassword_screen.dart';

class PasswordResetScreen extends StatefulWidget {
  static const routeName = 'password-reset-screen';
  // const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
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
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: Text(
                      'PASSWORD RESET',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                    ),
                    child: Text(
                      'To reset password enter Registered Mobile number,',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff919191),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                    ),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the Register Mobile Number';
                          } else if (value.length > 10) {
                            return 'Please enter the correct Mobile Number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: '+91  Mobile Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onSaved: (value) {
                          _pass = value.toString();
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff002543),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.2),
                        ),
                        child: TextButton(
                          onPressed: () { _submittedData();
                              if (trigger == true) {
                                Navigator.of(context)
                                    .pushReplacementNamed(OTPVerificationNewPass.routeName);
                              }
                              return null;},
                          child: Text(
                            'Generate OTP',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
