
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
		return gridViewCount(context);
	}


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
			children: listViewChildren(),
		);
	}

	GridView gridViewCount(BuildContext context) {
		return GridView.count(
			padding: EdgeInsets.all(10),
			crossAxisCount: 4,
			mainAxisSpacing: 10.0,
			crossAxisSpacing: 5.0,
			childAspectRatio: 1.0,
			children: listViewChildren(),
		);
	}



	List<Widget> listViewChildren() {
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