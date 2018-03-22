import 'package:flutter/material.dart';
import 'package:flutter_app/StatelessDemo.dart';
import 'package:flutter_app/Counter.dart';
import 'package:flutter_app/shop/ShoppingList.dart';
import 'package:flutter_app/base/ContainerDemo.dart';
import 'package:flutter_app/base/TextDemo.dart';
import 'package:flutter_app/base/ImageDemo.dart';

void main() {
  runApp(
      new MaterialApp(
        title: 'Flutter教程',
//        home: ImagePickerHomePage(title: 'Image Picker Example'),
//        home: StatelessHome(),
//        home: Counter(),
//        home: ShoppingList(products: _kProducts),
//        home: ContainerDemo(),
//        home: TextDemo(),
        home: ImageDemo(),
      )
  );
}

//final List<Product> _kProducts = <Product>[
//  Product(name: '鸡蛋'),
//  Product(name: '面'),
//  Product(name: '大米'),
//  Product(name: '薯片'),
//  Product(name: '土豆'),
//];





