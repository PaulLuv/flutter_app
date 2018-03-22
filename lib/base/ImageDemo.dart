import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('从URL地址获取图像'),
      ),
      body: Center(
        child: Image.network(
          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
          scale: 2.0,
        ),
      ),
    );
  }
}