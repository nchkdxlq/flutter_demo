
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeTestRoute extends StatefulWidget {

	@override
	ThemeTestRouteState createState() {
		return ThemeTestRouteState();
  }
}

class ThemeTestRouteState extends State<ThemeTestRoute> {

	Color _themeColor = Colors.teal;

	@override
  Widget build(BuildContext context) {
    return Theme(
			data: ThemeData(
				primaryColor: _themeColor,
				iconTheme: IconThemeData(color: _themeColor)
			),
			child: _scaffold(context),
		);
  }


  Scaffold _scaffold(BuildContext context) {
		ThemeData themeData = Theme.of(context);
		return Scaffold(
			appBar: AppBar(title: Text('主题测试'),),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Icon(Icons.favorite),
							Icon(Icons.airport_shuttle),
							Text('  颜色跟随主题')
						],
					),
					Theme(
						data: themeData.copyWith(
							iconTheme: themeData.iconTheme.copyWith(
								color: Colors.black
							),
						),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								Icon(Icons.favorite),
								Icon(Icons.airport_shuttle),
								Text('   颜色固定黑色')
							],
						),
					)
				],
			),
			floatingActionButton: FloatingActionButton(
				onPressed: _onPressed,
				child: Icon(Icons.palette),
			),
		);
	}

	void _onPressed() {
		setState(() {
		  _themeColor = _themeColor == Colors.teal ? Colors.blue : Colors.teal;
		});
	}

}