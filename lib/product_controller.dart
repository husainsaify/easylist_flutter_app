import 'package:flutter/material.dart';

class ProductController extends StatelessWidget{
  final Function addProductFunction;

  ProductController(this.addProductFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProductFunction({"title":"This is a title","image":"assets/food.jpg"});
      },
      child: Text("Add Product"),
    );
  }

}