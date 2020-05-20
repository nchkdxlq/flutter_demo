import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/CounterPage.dart';

class EmailPage extends CounterPage {

	@override
	State<StatefulWidget> createState() {
		return EmailPageState();
	}
}

class EmailPageState extends CounterState {

	@override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

	@override
	AppBar appBar(BuildContext context) {
		return AppBar(title: Text('EmailPage'),);
	}
}