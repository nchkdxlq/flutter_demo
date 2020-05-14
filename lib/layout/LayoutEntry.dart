
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/layout/FlexLayout.dart';
import 'package:flutterdemo/layout/FlowLayout.dart';
import 'package:flutterdemo/layout/LinearLayout.dart';

class LayoutEntry extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
			appBar: AppBar(title: Text('Layout'),),
			body: body(context)
		);

  }

	Widget body(BuildContext context) {
		return Container(
			child: Column(
				children: <Widget>[
					rowItem('LinearLayout', LinearLayout(), context),
					rowItem('FlexLayout', FlexLayout(), context),
					rowItem('FlowLayout', FlowLayout(), context),
				],
			),
		);
	}

	Widget rowItem(String title, Widget destWidget, BuildContext context) {
		return Container(
			padding: EdgeInsets.all(10),
			child: Center(
				child: RaisedButton(
					child: Text(title),
					onPressed: () => {
						navigatorPush(context, destWidget)
					}),
				),
		);
	}

}