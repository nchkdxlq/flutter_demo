import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void navigatorPush(BuildContext context, Widget destWidget) {
	Navigator.push(context, MaterialPageRoute(builder: (context) {
		return destWidget;
	}));
}


Widget createRowItem(BuildContext context, Widget child, VoidCallback onPressed) {
	return Container(
		padding: EdgeInsets.all(10),
		child: Center(
			child: RaisedButton(
				child: child,
				onPressed: onPressed,
			),
		),
	);
}

