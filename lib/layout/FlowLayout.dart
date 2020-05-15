
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowLayout extends StatelessWidget {
	@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
			appBar: AppBar(title: Text('FlowLayout'),),
			body: body(context),
		);
  }

	Widget body(BuildContext context) {
		return Column(
			children: [
				wrap(context),
				flow(context)
			],
		);
	}

	Widget flow(BuildContext context) {
		return Container(
			color: Colors.grey,
			margin: EdgeInsets.all(20),
			child: Flow(
				delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
				children: <Widget>[
					Container(width: 80.0, height:80.0, color: Colors.red,),
					Container(width: 80.0, height:80.0, color: Colors.green,),
					Container(width: 80.0, height:80.0, color: Colors.blue,),
					Container(width: 80.0, height:80.0,  color: Colors.yellow,),
					Container(width: 80.0, height:80.0, color: Colors.brown,),
					Container(width: 80.0, height:80.0,  color: Colors.purple,),
				],
			)
		);
	}


	Widget wrap(BuildContext context) {
		return Container(
			color: Colors.grey,
			margin: EdgeInsets.all(20),
			height: 200,
			child: Wrap(
				direction: Axis.horizontal,
				alignment: WrapAlignment.start, // 水平方向对齐方式
				spacing: 8.0, // 水平方向间距
				runAlignment: WrapAlignment.spaceEvenly, // 垂直方向对齐方式
				runSpacing: 4.0, // 垂直方向间距
				children: <Widget>[
					Chip(
						avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('A'),),
						label: Text('Hamilton'),
					),
					Chip(
						avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('M'),),
						label: Text('Lafayette'),
					),
					Chip(
						avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H'),),
						label: Text('Mulligan'),
					),
					Chip(
						avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('J'),),
						label: Text('Laurens'),
					),
					Container(
						color: Colors.red,
						child:Chip(
							avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('J'),),
							label: Text('Laurens'),
						),
					)
				],
			),
		);
	}
}



class TestFlowDelegate extends FlowDelegate {
	EdgeInsets margin = EdgeInsets.zero;
	TestFlowDelegate({this.margin});
	@override
	void paintChildren(FlowPaintingContext context) {
		var x = margin.left;
		var y = margin.top;
		//计算每一个子widget的位置
		for (int i = 0; i < context.childCount; i++) {
			var w = context.getChildSize(i).width + x + margin.right;
			if (w < context.size.width) {
				context.paintChild(i,
					transform: new Matrix4.translationValues(
						x, y, 0.0));
				x = w + margin.left;
			} else {
				x = margin.left;
				y += context.getChildSize(i).height + margin.top + margin.bottom;
				//绘制子widget(有优化)
				context.paintChild(i,
					transform: new Matrix4.translationValues(
						x, y, 0.0));
				x += context.getChildSize(i).width + margin.left + margin.right;
			}
		}
	}

	@override
	getSize(BoxConstraints constraints){
		//指定Flow的大小
		return Size(double.infinity,200.0);
	}

	@override
	bool shouldRepaint(FlowDelegate oldDelegate) {
		return oldDelegate != this;
	}
}