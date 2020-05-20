
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/keep_alive/AirPlayPage.dart';
import 'package:flutterdemo/bottom_navigation_bar/keep_alive/EmailPage.dart';
import 'package:flutterdemo/bottom_navigation_bar/keep_alive/HomePage.dart';

class KeepAliveNavigation extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
		return KeepAliveNavigationState();
  }
}

class KeepAliveNavigationState extends State<KeepAliveNavigation> with SingleTickerProviderStateMixin {

	int _currentIndex = 0;

	var _controller = PageController(
		initialPage: 0,
	);


	@override
  void dispose() {
		_controller.dispose();
    super.dispose();
  }

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: PageView(
				controller: _controller,
				children: <Widget>[
					HomePage(),
					EmailPage(),
					AirPlayPage(),
				],
				physics: NeverScrollableScrollPhysics(),
			),
			bottomNavigationBar: bottomNavigationBar(context),
		);
	}

	AppBar appBar(BuildContext context) {
		return AppBar(
			title: Text('AppName'),
		);
	}

	Widget body(BuildContext context) {
		return PageView(
			controller: _controller,
			children: <Widget>[
				HomePage(),
				EmailPage(),
				AirPlayPage(),
			],
			physics: NeverScrollableScrollPhysics(),
		);
	}


	BottomNavigationBar bottomNavigationBar(BuildContext context) {
		return BottomNavigationBar(
			items: [
				barItem('Home', Icons.home),
				barItem('Email', Icons.email),
				barItem('Airplay', Icons.airplay),
			],
			currentIndex: _currentIndex,
			fixedColor: Colors.blue,
			onTap: onItemTapped,
		);
	}

	BottomNavigationBarItem barItem(String text, IconData icon) {
		return BottomNavigationBarItem(
			icon: Icon(icon),
			title: Text(text),
		);
	}

	void onItemTapped(int index) {
		_controller.jumpToPage(index);
		setState(() {
			_currentIndex = index;
		});
	}
}