import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageTwo')),
      body: Container(
        child: Center(child: Text("Page Two."))
      ),
    );
  }
}