
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('LayoutDemo'),),
			body: body(context),
		);
  }

	Widget body(BuildContext context) {
		return Text('layout');
	}

}