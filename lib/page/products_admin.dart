import 'package:flutter/material.dart';

import 'product_creat.dart';
import 'product_list.dart';


class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(title: Text("Choose"), automaticallyImplyLeading: false,),
          ListTile(title: Text("Products"), onTap: () {
            Navigator.pushReplacementNamed(context, "/");
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
        ProductCreatePage(addProduct),
        ProductListPage(),
      ]),
    ),);
  }
}