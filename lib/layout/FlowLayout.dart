
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowLayout extends StatelessWidget {
	@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
			appBar: AppBar(title: Text('FlowLayout'),),
			body: body(context),
		);
  }

	Widget body(BuildContext context) {
		return Container(
			color: Colors.grey,
			margin: EdgeInsets.all(20),
		);
	}
}