
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableWidget extends StatelessWidget {
	@override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text('Scrollable Widget'),),
			body: body(context),
		);
  }

  Widget body(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[

			],
		);
	}
}
