import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/CounterPage.dart';

class AirPlayPage extends CounterPage {
	@override
	State<StatefulWidget> createState() {
		return AirPlayState();
	}
}

class AirPlayState extends CounterState {

	@override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

	@override
	AppBar appBar(BuildContext context) {
		return AppBar(title: Text('AirPlayPage'),);
	}
}