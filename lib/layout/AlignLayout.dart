
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignLayout extends StatelessWidget {
	
	@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
			appBar: AppBar(title: Text('AlignLayout'),),
			body: body(context),
		);
  }
  
  
  Widget body(BuildContext context) {
		return Container(
			margin: EdgeInsets.all(50),
			height: 120,
			width: 120,
			color: Colors.blue[50],
			child: Align(
				alignment: Alignment.center,
				widthFactor: 1.5,
				heightFactor: 3.0,
				child: Container(
					height: 60,
					width: 60,
					color: Colors.red,
				)
			),
		);
	}
  
}