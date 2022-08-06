import 'package:flutter/material.dart';
import 'package:ygo/screens/favorites_screen.dart';
import 'package:ygo/screens/my_list_screen.dart';
import 'package:ygo/screens/orders_screen.dart';
import 'package:ygo/screens/shops_list_screen.dart';
import 'package:ygo/screens/5_ygo_homepage.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tabs-screen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _pages = [
    HomePage(),
    ShopsListScreen(),
    MyListScreen(),
    FavoritesScreen(),
    OrdersScreen(),
  ];
  int _selectedPadeIndex = 0;

  @override
  void _selectPage(int index) {
    setState(() {
      _selectedPadeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _selectPage,
        currentIndex: _selectedPadeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
              ),
              label: 'Shops'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
            ),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart,
            ),
            label: 'Orders',
          ),
        ],
      ),
      body: _pages[_selectedPadeIndex],
    );
  }
}
