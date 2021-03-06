import 'package:flutter/material.dart';

class StatelessHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: '导航菜单',
          onPressed: null,
        ),
        title: new Text('实例标题'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: null,
          ),
        ],
      ),
      body: new Center(
        child: new Text('你好，世界！'),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: '增加',
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}