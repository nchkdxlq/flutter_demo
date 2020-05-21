
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Container/ConstrainedBoxEntry.dart';
import 'package:flutterdemo/Container/ScaffoldRoute.dart';
import 'package:flutterdemo/Util.dart';

class ContainerEntry extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  	return Scaffold(
			appBar: AppBar(title: Text('Container Widget'),),
			body: body(context),
		);
  }

  Widget body(BuildContext context) {
  	return Column(
			children: <Widget>[
				indicatorRowItem('ConstrainedBox', ConstrainedBoxEntry(), context),
				indicatorRowItem('ScaffoldRoute', ScaffoldRoute(), context),
			],
		);
	}

}