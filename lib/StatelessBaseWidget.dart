
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessBaseWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: body(context),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(title: Text('BaseWidget'),);
  }

  Widget body(BuildContext context) {
    return Center(
      child: Text('subclass should implement body method !'),
    );
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return null;
  }

}