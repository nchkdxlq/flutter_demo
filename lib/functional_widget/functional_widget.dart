
import 'package:flutterdemo/StatelessBaseWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/functional_widget/inherited_widget.dart';
import 'package:flutterdemo/functional_widget/provider_route.dart';
import 'package:flutterdemo/functional_widget/theme_route.dart';

class FunctionalWidget extends StatelessBaseWidget {

	@override
  AppBar appBar(BuildContext context) {
    return AppBar(title: Text('功能型组件'));
  }

  @override
  Widget body(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[
				indicatorRowItem('InheritedWidget', InheritedWidgetRoute(), context),
				indicatorRowItem('Provider', ProviderRoute(), context),
				indicatorRowItem('Theme', ThemeTestRoute(), context),
			],
		);
  }



}