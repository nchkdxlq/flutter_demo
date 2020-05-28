
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {


	@override
  Widget build(BuildContext context) {
   	return Material(
			child: CustomScrollView(
				slivers: <Widget>[
					// AppBar, 包含一个导航栏
					_sliverAppBar(),
					_sliverPadding(),
					_sliverFixedExtentList(),
				],
			),
		);
  }

  SliverAppBar _sliverAppBar() {
		return SliverAppBar(
			pinned: true,
			expandedHeight: 250.0,
			flexibleSpace: FlexibleSpaceBar(
				title: Text('CustomScrollView'),
				background: Image.asset("./images/avatar.png", fit: BoxFit.cover,),
			),
		);
	}

  SliverPadding _sliverPadding() {
		return SliverPadding(
			padding: EdgeInsets.all(8.0),
			sliver: SliverGrid(
				gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
					crossAxisCount: 2,
					mainAxisSpacing: 10.0,
					crossAxisSpacing: 10.0,
					childAspectRatio: 4.0,
				),
				delegate: SliverChildBuilderDelegate((context, index) {
						return Container(
							alignment: Alignment.center,
							color: Colors.cyan[100 * (index % 9)],
							child: Text('grid item $index'),
						);
					},
					childCount: 20,
				),
			),
		);
	}


	SliverFixedExtentList _sliverFixedExtentList() {
		return SliverFixedExtentList(
			itemExtent: 50.0,
			delegate: SliverChildBuilderDelegate((context, index) {
					return Container(
						alignment: Alignment.center,
						color: Colors.lightBlue[100 * (index % 9)],
						child: Text('list item $index'),
					);
				},
			childCount: 50
			),
		);
	}

}