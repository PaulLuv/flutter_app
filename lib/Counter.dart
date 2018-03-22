import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _count = 0;
  void _increment(){
    setState((){
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Flutter 实例'),
      ),
      body: Center(
        child: Text('按钮点击 $_count 次${_count == 0 ? '' :''}'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          tooltip: '增加',
          child: Icon(Icons.add),
      ),
    );
}