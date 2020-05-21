
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/layout/AlignLayout.dart';
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
					indicatorRowItem('LinearLayout', LinearLayout(), context),
					indicatorRowItem('FlexLayout', FlexLayout(), context),
					indicatorRowItem('FlowLayout', FlowLayout(), context),
					indicatorRowItem('AlignLayout', AlignLayout(), context),
				],
			),
		);
	}
}