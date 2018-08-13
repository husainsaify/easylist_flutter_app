import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {

  ProductsPage() {
    print("Test re baba");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(title: Text("Choose"), automaticallyImplyLeading: false,),
          ListTile(title: Text("Manage Product"), onTap: () {},)
        ],),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManager(),
    );
  }

}