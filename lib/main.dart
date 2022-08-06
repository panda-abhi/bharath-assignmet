import 'package:flutter/material.dart';
import 'package:ygo/screens/favorites_screen.dart';
import 'package:ygo/screens/my_list_screen.dart';
import 'package:ygo/screens/orders_screen.dart';
import 'package:ygo/screens/shops_list_screen.dart';
import 'package:ygo/screens/shops_screen.dart';
import 'package:ygo/screens/tabs_screen.dart';
import 'screens/2_welcome_screen_number.dart';
import 'screens/3_login_Screen_password.dart';
import 'screens/1_open_screen.dart';
import 'screens/5_ygo_homepage.dart';
import './screens/grocery_shops_list_screen.dart';
import 'screens/4_done_screen.dart';
import './screens/create_account_screen.dart';
import './screens/product_detail_screen.dart';
import './screens/password_reset_screen.dart';
import './screens/otp_verifiacation_newpassword_screen.dart';
import './screens/create_newpassword_screen.dart';
import './screens/password_changed_screen.dart';
import './screens/categoryviewallscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: OpenLogoScreen(),
      initialRoute: '/',
      routes: {
        OpenLogoScreen.routeName: (ctx) => OpenLogoScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
        HomePage.routeName: (ctx) => HomePage(),
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        LoginScreenPass.routeName: (ctx) => LoginScreenPass(),
        OrdersScreen.routeName: (ctx) => OrdersScreen(),
        MyListScreen.routeName: (ctx) => MyListScreen(),
        ShopsListScreen.routeName: (ctx) => ShopsListScreen(),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
        GroceryShopListScreen.routeName: (ctx) => GroceryShopListScreen(),
        DoneScreen.routeName: (ctx) => DoneScreen(),
        CreateAccountScreen.routeName: (ctx) => CreateAccountScreen(),
        ShopsScreen.routeName: (ctx) => ShopsScreen(),
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        PasswordResetScreen.routeName: (ctx) => PasswordResetScreen(),
        OTPVerificationNewPass.routeName: (ctx) => OTPVerificationNewPass(),
        CreateNewPassScreen.routeName: (ctx) => CreateNewPassScreen(),
        PasswordDoneScreen.routeName: (ctx) => PasswordDoneScreen(),
        CategoryViewAllScreen.routeName: (ctx) => CategoryViewAllScreen(),
      },
    );
  }
}
