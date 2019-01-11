import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final String pageText; // 保存跳转进来获取到的参数

  OtherPage(this.pageText); // 获取参数

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(pageText),
      ),
      body: new Center(
        child: new Text('pageText'),
      ),
    );
  }
}
