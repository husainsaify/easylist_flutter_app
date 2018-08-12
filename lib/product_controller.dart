import 'package:flutter/material.dart';

class ProductController extends StatelessWidget{
  final Function addProductFunction;

  ProductController(this.addProductFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProductFunction("Aur kha");
      },
      child: Text("Add Product"),
    );
  }

}