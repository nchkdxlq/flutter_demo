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

Widget indicatorRowItem(String title, Widget destWidget, BuildContext context) {
	return createRowItem(context, Text(title), () => {
		navigatorPush(context, destWidget)
	});
}


Container createBox({Color color, double width = 50, double height = 50, String text}) {
	return Container(
		color: color,
		child: Center(
			child: Text(text),
		),
		width: width,
		height: height,
	);
}