import 'package:flutter/material.dart';

import 'products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ), //appbar
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => ProductsPage()),);
        }, child: Text("LOGIN"),),),
    );
  }

}