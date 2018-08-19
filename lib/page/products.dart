import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String,dynamic>> _products;

  ProductsPage(this._products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(title: Text("Choose"), automaticallyImplyLeading: false,),
          ListTile(title: Text("Manage Product"), onTap: () {
            Navigator.pushReplacementNamed(context, "/admin");
          },)
        ],),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManager(_products),
    );
  }

}