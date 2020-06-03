
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {

	ShareDataWidget({
		@required this.data,
		Widget child,
	}) :super(child: child);


	final int data; //需要在子树中共享的数据，保存点击次数

	//定义一个便捷方法，方便子树中的widget获取共享数据
	static ShareDataWidget of(BuildContext context) {
//		return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
		return context.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
	}


	// 该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
		//如果返回true，则子树中依赖(build函数中有调用)本widget
		//的子widget的`state.didChangeDependencies`会被调用
		return oldWidget.data != data;
  }

}

///////////////////////////////////////////////////////////////////////////


class ChildWidget extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
		return ChildWidgetState();
  }
}

class ChildWidgetState extends State<ChildWidget> {
	@override
  Widget build(BuildContext context) {
		return Center(
			child: Text(ShareDataWidget.of(context).data.toString()),
		);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('Dependencies change');
  }
}

///////////////////////////////////////////////////////////////////////////

class InheritedWidgetRoute extends StatefulWidget {

	@override
	State<StatefulWidget> createState() {
		return InheritedWidgetRouteState();
	}

}


class InheritedWidgetRouteState extends State<InheritedWidgetRoute> {
	int count = 0;

	@override
  Widget build(BuildContext context) {

		return Scaffold(
			appBar: AppBar(title: Text('InheritedWidget'),),
			body: _shareDataWidget(),
		);
  }

  ShareDataWidget _shareDataWidget() {
		return ShareDataWidget(
			data: count,
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Padding(
						padding: EdgeInsets.only(bottom: 20.0),
						child: ChildWidget(),
					),
					RaisedButton(
						child: Text('Increment'),
						onPressed: onTap,
					)
				],
			),
		);
	}

  void onTap() {
		setState(() {
		  count++;
		});
	}
}



