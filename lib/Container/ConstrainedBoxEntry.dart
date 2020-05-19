
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstrainedBoxEntry extends StatelessWidget {
	@override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text('ConstrainedBox'),),
			body: body(context),
		);
  }
  
  Widget body(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(top: 50),
			child: ConstrainedBox(
				constraints: BoxConstraints(
					minHeight: 50.0,
					minWidth: double.infinity
				),
				child: Container(
					height: 5.0,
					child: redBox(),
				),
			)
		);
	}

	Widget redBox() {
		return DecoratedBox(
			decoration: BoxDecoration(color: Colors.red),
		);
	}
}