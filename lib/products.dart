import 'package:flutter/material.dart';

import './page/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);


  Widget _getProductCard(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.red,
                child: Text("View Details"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage(),
                  ), //MaterialPageRoute
                  ); //Push
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