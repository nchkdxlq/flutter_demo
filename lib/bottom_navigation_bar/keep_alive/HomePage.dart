import 'package:flutter/material.dart';
import 'package:flutterdemo/bottom_navigation_bar/CounterPage.dart';

class HomePage extends CounterPage {
	@override
	State<StatefulWidget> createState() {
		return HomePageState();
	}
}

class HomePageState extends CounterState with SingleTickerProviderStateMixin {

	List tabs = ['新闻', '历史', '图片'];

	TabController _controller;

	@override
  void initState() {
		_controller = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

	@override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

	@override
	AppBar appBar(BuildContext context) {
		return AppBar(
			title: Text('HomePage'),
			actions: [
				IconButton(icon: Icon(Icons.share), onPressed: () => {},)
			],
			bottom: TabBar(
				controller: _controller,
				tabs: tabs.map( (e) => Tab(text: e) ).toList(),
			),
		);
	}


	@override
  Widget body(BuildContext context) {
    return TabBarView(
			controller: _controller,
			children: tabs.map( (e) {
				return Container(
					alignment: Alignment.center,
					child: Text(e, textScaleFactor: 3,),
				);
			} ).toList(),
		);
  }

  @override
  FloatingActionButton floatingActionButton(BuildContext context) {
    return null;
  }
}