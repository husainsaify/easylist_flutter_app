import 'package:flutter/material.dart';

import './page/products.dart';
import './page/products_admin.dart';
import './page/product.dart';
import './page/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  final List<Map<String,dynamic>> _products = [];

  void _addProduct(Map<String,dynamic> product){
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purpleAccent
      ),
      //home: AuthPage(),  //home
      routes: {
        "/": (BuildContext context) => ProductsPage(_products),
        //"/": (BuildContext context) => AuthPage(),
        "/admin": (BuildContext context) => ProductAdminPage(_addProduct,_deleteProduct),
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathEle = setting.name.split("/");
        if(pathEle[0] != ""){
          return null;
        }

        if(pathEle[1] == "product"){
          final int index = int.parse(pathEle[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                ProductPage(
                  title: _products[index]['title'],
                  imageUrl: _products[index]['image'],
                ),
          ); //MaterialPageRoute
        }
        return null;
      },
    ); // MaterialApp;
  }
}