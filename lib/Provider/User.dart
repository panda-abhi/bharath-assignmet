import 'package:flutter/foundation.dart';

class User {
  final String? id;
  final String? name;
  final String? mobile;
  final String? password;
  final gender? userGender;

  User({
    @required this.id,
    this.name,
    @required this.mobile,
    this.password,
    this.userGender,
  });


}

enum gender {
  Male,
  Female,
  Transgender
}