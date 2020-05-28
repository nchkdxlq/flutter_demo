

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollControllerRoute extends StatefulWidget {
	@override
  State<StatefulWidget> createState() {
		return ScrollControllerRouteState();
  }
}


class ScrollControllerRouteState extends State<ScrollControllerRoute> {

	ScrollController _controller = ScrollController();
	bool showToTopBtn = false;

	@override
  void initState() {
    super.initState();

    _controller.addListener(() {
    	print(_controller.offset);

    	if (_controller.offset < 1000 && showToTopBtn) {
    		setState(() {
    		  showToTopBtn = false;
    		});
			} else if (_controller.offset >= 1000 && !showToTopBtn) {
    		setState(() {
    		  showToTopBtn = true;
    		});
			}
		});
  }

  @override
  void dispose() {
		// 为了避免内存泄露，需要调用 _controller.dispose()
    _controller.dispose();
    super.dispose();
  }

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Text('滚动控制'),),
			body: _listView(),
			floatingActionButton: showToTopBtn ? _floatingActionButton() : null,
		);
  }

  ListView _listView() {
		return ListView.builder(
			itemCount: 100,
			itemExtent: 50.0,
			controller: _controller,
			itemBuilder: (context, index) {
				return ListTile(
					title: Center(
						child: Text('$index'),
					),
				);
			});
	}

	FloatingActionButton _floatingActionButton() {
		return FloatingActionButton(
			child: Icon(Icons.arrow_upward),
			onPressed: () {
				_controller.animateTo(0.0,
					duration: Duration(milliseconds: 200),
					curve: Curves.ease);
			},
		);
	}
}