import 'package:flutter/material.dart';
import 'ShoppingListItem.dart';

class ShoppingList extends StatefulWidget {

  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('购物清单'),
        ),
        body: ListView(
          children: widget.products.map(
                  (Product product) {
                return ShoppingListItem(
                  product: product,
                  inCart: _shoppingCart.contains(product),
                  onCartChanged: _handleCartChanged,
                );
              }
          ).toList(),
        ),
      );
}

final List<Product> _kProducts = <Product>[
  Product(name: '鸡蛋'),
  Product(name: '面'),
  Product(name: '大米'),
  Product(name: '薯片'),
  Product(name: '土豆'),
];
