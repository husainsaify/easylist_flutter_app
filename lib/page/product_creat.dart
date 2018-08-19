import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String _titleString;
  String _descriptionString;
  double _priceString;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(children: <Widget>[
        TextField(
            decoration: InputDecoration(hintText: "Product Title"),
            onChanged: (String value) {
              setState(() {
                _titleString = value;
              },);
            }),
        TextField(
            decoration: InputDecoration(hintText: "Product Description"),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _descriptionString = value;
              },);
            }),
        TextField(
            decoration: InputDecoration(hintText: "Product Price"),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceString = double.parse(value);
              },);
            }),
        SizedBox(
          height: 10.0,
        ),
        RaisedButton(
          onPressed: () {
            final Map<String, dynamic> product = {
              "title": _titleString,
              "description": _descriptionString,
              "price": _priceString,
              "image": "assets/food.jpg"
            };
            widget.addProduct(product);
            //navigate to other page
            Navigator.pushReplacementNamed(context, "/");
          },
          child: Text("Save"),
          textColor: Colors.white,
          color: Theme
              .of(context)
              .primaryColor,
        ),
      ],),);
  }
}