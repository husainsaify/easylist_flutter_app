import 'package:flutter/material.dart';

import './page/auth.dart';
import './page/products.dart';
import './page/products_admin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purpleAccent
      ),
      //home: AuthPage(),  //home
      routes: {
        "/": (BuildContext context) => ProductsPage(),
        "/admin": (BuildContext context) => ProductAdminPage(),
      },
    ); // MaterialApp;
  }
}