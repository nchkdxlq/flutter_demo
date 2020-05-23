
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewBuild extends StatefulWidget {
	GridBuildState createState() => GridBuildState();
}


class GridBuildState extends State<GridViewBuild> {

	List<IconData> _icons = [];

	@override
  void initState() {
		super.initState();
    _retrieveIcons();
  }

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('ListView Build'),),
			body: body(context),
		);
  }

	GridView body(BuildContext context) {
		return GridView.builder(
			gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
				crossAxisCount: 3,
				childAspectRatio: 1
			),
			itemCount: _icons.length,
			itemBuilder: (context, index) {
				log('build index = $index');
				if (index == _icons.length - 1 && _icons.length < 200) {
					_retrieveIcons();
				}
				return Icon(_icons[index]);
			},
		);
	}
	
	void _retrieveIcons() {
		Future.delayed(Duration(microseconds: 200))
		.then((value) => {
			// 还没搞懂这里的语法
			setState(() {
				_icons.addAll([
					Icons.ac_unit,
					Icons.airport_shuttle,
					Icons.all_inclusive,
					Icons.beach_access,
					Icons.cake,
					Icons.free_breakfast
				]);
			})
		});
	}
	
}