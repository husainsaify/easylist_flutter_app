import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _getProductCard(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              products[index]['title'],
              style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: "Oswald"
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.red,
                child: Text("View Details"),
                onPressed: () {
                  Navigator.pushNamed<bool>(
                      context, "/product/" + index.toString()); //Push
                },
              ) //Flat button
            ],
          ), //Buttonbar
        ], //Card Widget
      ),
    ); //Card
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0 ? ListView.builder(
      itemBuilder: _getProductCard,
      itemCount: products.length,
    ) : Center(child: Text("No product found, Please add some"),); //Map
  }
}