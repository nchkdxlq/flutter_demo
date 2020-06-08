import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DartSyntax extends StatefulWidget {
	@override
	DartSyntaxState createState() => DartSyntaxState();
}

class DartSyntaxState extends State<DartSyntax> {

	@override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text('Dart Syntax'),),
			body: _body(),
		);
  }

  Widget _body() {
		return Center(
			child: RaisedButton(
				onPressed: dartEntry,
				child: Icon(Icons.favorite),
			),
		);
	}

	void dartEntry() {

	}

}



