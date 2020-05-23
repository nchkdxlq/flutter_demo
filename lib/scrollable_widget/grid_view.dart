
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/Util.dart';

class GridViewWidget extends StatefulWidget {
	@override
	GridViewState createState() => GridViewState();
}


class GridViewState extends State<GridViewWidget> {
	@override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text('GridView'),),
			body: body(context),
		);
  }

  Widget body(BuildContext context) {
//		return gridView(context);
//		return gridViewCount(context);
//		return gridViewWithFixedMaxCrossAxisExtent();
		return gridViewExtent();
	}

	// 交叉轴子组件数量
	GridView gridView(BuildContext context) {
		return GridView(
			padding: EdgeInsets.all(10),
			scrollDirection: Axis.vertical,
			gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
				crossAxisCount: 3, // 三列
				mainAxisSpacing: 10, // 主轴子组件的间距
				crossAxisSpacing: 20, // 交叉轴方向子组件的间距
				childAspectRatio: 1.0  // 子Widget的宽高比
			),
			children: icons(),
		);
	}

	GridView gridViewCount(BuildContext context) {
		return GridView.count(
			padding: EdgeInsets.all(10),
			crossAxisCount: 4,
			mainAxisSpacing: 10.0,
			crossAxisSpacing: 5.0,
			childAspectRatio: 1.0,
			children: icons(),
		);
	}

	/*
	* 如何理解 maxCrossAxisExtent 交叉轴子元素`最大长度` ??
	*
	* 实际上是子控件的`最小长度`, 为什么这么说，举例，假设ViewPort的宽度为750，
	* maxCrossAxisExtent = 300, 这样的条件下，交叉轴最多能容纳2(750/300)个子组件;
	* 而子组件的的实际宽度还是平均分配 750/2 = 375, 所以说maxCrossAxisExtent实际上是子组件的最小宽度。
	*
	* */

	//
	GridView gridViewWithFixedMaxCrossAxisExtent() {
		return GridView(
			padding: EdgeInsets.all(20),
			gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
				maxCrossAxisExtent: 100,
				mainAxisSpacing: 10.0,
				crossAxisSpacing: 20.0,
				childAspectRatio: 2.0,
			),
			children: icons(),
		);
	}

	GridView gridViewExtent() {
		return GridView.extent(
			maxCrossAxisExtent: 300,
			mainAxisSpacing: 20.0,
			crossAxisSpacing: 10.0,
			childAspectRatio: 2.0,
			children: icons(),
		);
	}



	List<Widget> icons() {
		return [
			createBox(color: Colors.red, width: 50, height: 100, text: '1'),
			createBox(color: Colors.blue, width: 100, height: 100, text: '2'),
			createBox(color: Colors.green, width: 100, height: 100, text: '3'),
			createBox(color: Colors.grey, width: 100, height: 100, text: '4'),
			createBox(color: Colors.red, width: 100, height: 100, text: '5'),
			createBox(color: Colors.pink, width: 100, height: 100, text: '6'),
		];
	}


}