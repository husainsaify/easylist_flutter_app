import 'package:flutter/material.dart';

import './page/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;
  Products(this.products,{this.deleteProduct});


  Widget _getProductCard(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.red,
                child: Text("View Details"),
                onPressed: () {
                  Navigator.push<bool>(context, MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductPage(
                          title: products[index]['title'],
                          imageUrl: products[index]['image'],
                        ),
                  ), //MaterialPageRoute
                  ).then((bool value){
                    if(value){
                      deleteProduct(index);
                    }
                  }); //Push
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