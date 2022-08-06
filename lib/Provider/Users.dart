import 'package:flutter/material.dart';

import 'User.dart';

class Users with ChangeNotifier {
  List<User> _items = [
    User(
      id: 'p1',
      name: 'Syed Ali',
      mobile: '9500672038',
      password: 'qwerty',
      userGender: gender.Male,
    ),
    User(
      id: 'p1',
      name: 'Vishnu',
      mobile: '9500679876',
      password: 'qwerty',
      userGender: gender.Male,
    )
  ];

  List<User> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }



  User findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addUser(User user) {
    final newUser = User(
      id: user.id,
      name: user.name,
      mobile: user.mobile,
      userGender: user.userGender,
      password: user.password,
    );
    _items.add(newUser);
    // _items.insert(0, newProduct); // at the start of the list
    notifyListeners();
  }

  void updateProduct(String id, User newUser) {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      _items[prodIndex] = newUser;
      notifyListeners();
    } else {
      print('...');
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }
}
