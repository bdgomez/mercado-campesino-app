import 'package:flutter/material.dart';
import 'package:mercadoscampesino_app/layout/miWiidget.dart';
import 'package:mercadoscampesino_app/layout/productosScreen.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Flutter'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: [
            IconButton(icon: Icon(Icons.account_box_rounded), onPressed: () {}),
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ), // AppBar
        body: ProductosScreen(),
      ), // Scaffold
    ); // MaterialApp
  }
}
