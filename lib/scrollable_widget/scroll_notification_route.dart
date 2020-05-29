

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollNotificationRoute extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
		return ScrollNotificationRouteState();
  }
}


// 如果组件树种有多个滚动组件时，ScrollNotification是如何监听的 ???

class ScrollNotificationRouteState extends State<ScrollNotificationRoute> {

	String _progress = '0%';

	@override
  Widget build(BuildContext context) {
    return Scrollbar(
			child: _notificationListener(),
		);
  }

  NotificationListener<ScrollNotification> _notificationListener() {
		return NotificationListener<ScrollNotification>(
			onNotification: _onNotification,
			child: _body(),
		);
	}

	bool _onNotification(ScrollNotification notification) {
		double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;

		setState(() {
		  _progress = '${(progress * 100).toInt()}%';
		});
		print("BottomEdge: ${notification.metrics.extentAfter == 0}");

		return false;
	}

	Widget _body() {
		return Scaffold(
			appBar: AppBar(title: Text('ScrollNotification'),),
			body: Stack(
				alignment: Alignment.center,
				children: <Widget>[
					_listView(),
					_circleAvatar()
				],
			),
		);
	}

	ListView _listView() {
		return ListView.builder(
			itemCount: 100,
			itemExtent: 50.0,
			itemBuilder: (context, index) {
				return ListTile(title: Text('$index'),);
			}
		);
	}
	CircleAvatar _circleAvatar() {
		return CircleAvatar(
			radius: 30.0,
			child: Text(_progress),
			backgroundColor: Colors.black54,
		);
	}

}