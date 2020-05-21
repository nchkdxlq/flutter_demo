
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/StatelessBaseWidget.dart';

class SingleChildScrollViewWidget extends StatelessBaseWidget {

  @override
  AppBar appBar(BuildContext context) {
    return AppBar(title: Text('SingleChildScrollView'),);
  }

  @override
  Widget body(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: str.split('')
                .map( (c) => Text(c, textScaleFactor: 2.0,) )
                .toList()
          ),
        ),
      ),
    );
  }

}

/**
 *  类似iOS的ScrollView
 *  疑问:
 *  1. 如何分页
 * */