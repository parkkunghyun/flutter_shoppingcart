import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _buildShoppingAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingAppBar() => AppBar(
    elevation: 0.0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {print("클릭됨"); },
    ),
    actions: [
      IconButton(
        onPressed: () {print("action 클릭"); },
          icon:const Icon(Icons.shopping_cart),
      ),
      const SizedBox(
        width: 16.0,
      ),
    ],
  );

}