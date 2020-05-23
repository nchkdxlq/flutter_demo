
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/scrollable_widget/grid_view.dart';
import 'package:flutterdemo/scrollable_widget/list_view.dart';
import 'package:flutterdemo/scrollable_widget/single_child_scrollView.dart';

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
				indicatorRowItem('SingleChildScrollView', SingleChildScrollViewWidget(), context),
				indicatorRowItem('ListView', ListViewWidget(), context),
				indicatorRowItem(('GridView'), GridViewWidget(), context),
			],
		);
	}
}
