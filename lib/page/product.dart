import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail Page"),
      ), //AppBar
      body: Column(
        children: <Widget>[
          Text("Detail page"),
          RaisedButton(
            child: Text("Go Back Bro"),
            onPressed: (){
              Navigator.pop(context);
            },
          ), //RaisedButton
        ], //Children
      ), //Body
    ); //Scaffold
  }

}