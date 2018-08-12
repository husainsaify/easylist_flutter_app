import 'package:flutter/material.dart';

import 'products.dart';
import 'product_controller.dart';

class ProductManager extends StatefulWidget{
  final String startingWord;
  ProductManager({this.startingWord});

  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() {
    if (widget.startingWord != null){
      _products.add(widget.startingWord);
    }
    super.initState();
  }

  void _addProduct(String text){
    setState(() {
      _products.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductController(_addProduct), //Raised Button,
      ), //Container
      Expanded(child: Products(_products),),
    ],);
  }

}