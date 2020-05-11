
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('LayoutDemo'),),
			body: body(context),
		);
  }

	Widget body(BuildContext context) {
		return Container(
			color: Colors.grey,
			child: rowEntry(context),
		);
	}

	Widget rowEntry(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			mainAxisSize: MainAxisSize.max, // 主轴的宽度， min: 容纳子控件所需的最小宽度；max: 等于父控件的宽度
			textDirection: TextDirection.rtl, // 主轴方向 ltr:左到右(默认) ltr: 右到左
			verticalDirection: VerticalDirection.down, // 交叉轴方向 down:上到下(默认) up:下到上
			children: <Widget>[
				createBox(color: Colors.red, width: 100, height: 50, text: '1'),
				createBox(color: Colors.blue, width: 100, height: 100, text: '2'),
				createBox(color: Colors.green, width: 100, height: 100, text: '3'),
			],
		);
	}



	Container createBox({Color color, double width = 50, double height = 50, String text}) {
		return Container(
			color: color,
			child: Center(
				child: Text(text),
			),
			width: width,
			height: height,
		);
	}

}