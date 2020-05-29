
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/scrollable_widget/custom_scrollView.dart';
import 'package:flutterdemo/scrollable_widget/grid_view.dart';
import 'package:flutterdemo/scrollable_widget/grid_view_build.dart';
import 'package:flutterdemo/scrollable_widget/list_view.dart';
import 'package:flutterdemo/scrollable_widget/scroll_controller_route.dart';
import 'package:flutterdemo/scrollable_widget/scroll_notification_route.dart';
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
				indicatorRowItem('GridView', GridViewWidget(), context),
				indicatorRowItem('GridView Build', GridViewBuild(), context),
				indicatorRowItem('CustomScrollView', CustomScrollViewWidget(), context),
				indicatorRowItem('ScrollController', ScrollControllerRoute(), context),
				indicatorRowItem('ScrollNotification', ScrollNotificationRoute(), context),
			],
		);
	}
}
