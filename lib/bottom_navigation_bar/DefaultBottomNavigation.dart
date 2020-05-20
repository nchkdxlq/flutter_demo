
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/AirPlayPage.dart';
import 'package:flutterdemo/bottom_navigation_bar/EmailPage.dart';
import 'package:flutterdemo/bottom_navigation_bar/HomePage.dart';

class DefaultBottomNavigation extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
		return DefaultBottomNavigationState();
  }
}


class DefaultBottomNavigationState extends State<DefaultBottomNavigation> {

	int _currentIndex = 0;
	List<Widget> pages;

	@override
  void initState() {
		pages = [HomePage(), EmailPage(), AirPlayPage()];
    super.initState();
  }

	@override
  Widget build(BuildContext context) {
    return Scaffold(
			body: body(context),
			bottomNavigationBar: bottomNavigationBar(context),
		);
  }

  AppBar appBar(BuildContext context) {
		return AppBar(
			title: Text('AppName'),
		);
	}

	Widget body(BuildContext context) {
		return pages[_currentIndex];
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
		setState(() {
		  _currentIndex = index;
		});
	}
}