
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<StatefulWidget> {

	int _count = 0;

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: appBar(context),
			body: body(context),
			floatingActionButton: FloatingActionButton(
				onPressed: incrementCounter,
				child: Icon(Icons.add),
			),
		);
  }

  void incrementCounter() {
		setState(() {
		  _count++;
		});
	}

	AppBar appBar(BuildContext context) {
		return null;
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
}