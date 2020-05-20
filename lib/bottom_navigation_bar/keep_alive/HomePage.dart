import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/CounterPage.dart';

class HomePage extends CounterPage {
	@override
	State<StatefulWidget> createState() {
		return HomePageState();
	}
}

class HomePageState extends CounterState {

	@override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

	@override
	AppBar appBar(BuildContext context) {
		return AppBar(title: Text('HomePage'),);
	}
}