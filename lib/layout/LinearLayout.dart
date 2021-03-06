
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';

class LinearLayout extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('LinearLayout'),),
			body: body(context),
		);
	}

	Widget body(BuildContext context) {
		return Container(
			color: Colors.grey,
			margin: EdgeInsets.all(20),
//			child: rowEntry(context),
			child: columnEntry(context),
		);
	}

	Widget columnEntry(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.start, // 主轴对齐方式, default: start
			crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴对齐方式, default: center
			mainAxisSize: MainAxisSize.min, // 主轴的宽度， min: 容纳子控件所需的最小宽度；max: 占满父控件的高度
			textDirection: TextDirection.rtl, // 交叉轴方向: default: ltr; ltr: 左-->右, rtl: 右-->左
			verticalDirection: VerticalDirection.up, // 主轴方向: default: down: 上-->下; up: 下-->上
			children: <Widget>[
				createBox(color: Colors.red, width: 50, height: 100, text: '1'),
				createBox(color: Colors.blue, width: 100, height: 100, text: '2'),
				createBox(color: Colors.green, width: 100, height: 100, text: '3'),
			],
		);
	}


	Widget rowEntry(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			mainAxisSize: MainAxisSize.max, // 主轴的宽度， min: 容纳子控件所需的最小宽度；max: 占满父控件的高度
			textDirection: TextDirection.rtl, // 主轴方向 ltr:左到右(默认) ltr: 右到左
			verticalDirection: VerticalDirection.down, // 交叉轴方向 down:上到下(默认) up:下到上
			children: <Widget>[
				createBox(color: Colors.red, width: 100, height: 50, text: '1'),
				createBox(color: Colors.blue, width: 100, height: 100, text: '2'),
				createBox(color: Colors.green, width: 100, height: 100, text: '3'),
			],
		);
	}

}