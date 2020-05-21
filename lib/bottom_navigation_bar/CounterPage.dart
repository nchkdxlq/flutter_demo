
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<StatefulWidget> with AutomaticKeepAliveClientMixin {

	int _count = 0;

	@override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;

	@override
  Widget build(BuildContext context) {
		super.build(context);
		return Scaffold(
			appBar: appBar(context),
			body: body(context),
			floatingActionButton: floatingActionButton(context),
		);
  }

  void incrementCounter() {
		setState(() {
		  _count++;
		});
	}

	AppBar appBar(BuildContext context) {
		return AppBar(title: Text('CounterPage'),);
	}

  Widget body(BuildContext context) {
		return Center(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					Text('$_count', style: TextStyle(fontSize: 40)),
				],
			),
		);
	}

	FloatingActionButton floatingActionButton(BuildContext context) {
		return FloatingActionButton(
			onPressed: incrementCounter,
			child: Icon(Icons.add),
		);
	}
}