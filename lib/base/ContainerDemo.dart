import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(
            color: Colors.red,
            width: 8.0,
          ),
        ),
        child: Text('容器演示'),
      ),
    );
  }
}