import 'package:flutter/material.dart';

import "./products.dart";
import 'product_creat.dart';
import 'product_list.dart';


class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(title: Text("Choose"),automaticallyImplyLeading: false,),
          ListTile(title: Text("Products"), onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage()),);
          },),
        ],),
      ),
      appBar: AppBar(
        title: Text("Manage Product"),
        bottom: TabBar(tabs: <Widget>[
          Tab(
            icon: Icon(Icons.create),
            text: "Create Product",
          ),
          Tab(
            icon: Icon(Icons.list),
            text: "My Product",
          )
        ]),
      ),
      body: TabBarView(children: <Widget>[
        ProductCreatePage(),
        ProductListPage(),
      ]),
    ),);
  }
}