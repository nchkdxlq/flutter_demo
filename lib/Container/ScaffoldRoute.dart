
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
	@override
	_ScaffoldRouteState createState() => _ScaffoldRouteState();
}


class _ScaffoldRouteState extends State<ScaffoldRoute> with SingleTickerProviderStateMixin {

	int _selectedIndex = 1;

	TabController _tabController;
	List tabs = ['新闻', '历史', '图片'];

	@override
  void initState() {
		super.initState();
		_tabController = TabController(length: tabs.length, vsync: this);
  }

	@override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar( // 导航栏
				title: Text('App Name'),
				actions: <Widget>[ // 导航栏右侧菜单
					IconButton(icon: Icon(Icons.share), onPressed: () => {},)
				],
				bottom: TabBar(
					controller: _tabController,
					tabs: tabs.map( (e) => Tab(text: e) ).toList()
				),
			),
//			drawer: myDrawer(),
			body: body(context),
			bottomNavigationBar: bottomAppBar(context),
//			bottomNavigationBar: bottomNavigationBar(context),
			floatingActionButton: FloatingActionButton( // 悬浮按钮
				child: Icon(Icons.add),
				onPressed: _onAdd,
			),
		);
  }

  Widget myDrawer() {
		return Builder(builder: (context) {
			return IconButton(
				icon: Icon(Icons.dashboard, color: Colors.white,),
				onPressed: () {
					// 打开抽屉菜单
					Scaffold.of(context).openDrawer();
				},
			);
		});
	}


  void _onItemTapped(int index) {
		setState(() {
		  _selectedIndex = index;
		});
	}

	void _onAdd() {

	}

	Widget body(BuildContext context) {
		return TabBarView(
			controller: _tabController,
			children: tabs.map( (e) {
				return Container(
					alignment: Alignment.center,
					child: Text(e, textScaleFactor: 5,),
				);
			} ).toList(),
		);
	}


	BottomNavigationBar bottomNavigationBar(BuildContext context) {
		return BottomNavigationBar( // 底部导航
			items: <BottomNavigationBarItem>[
				BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
				BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
				BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
			],
			currentIndex: _selectedIndex,
			fixedColor: Colors.blue,
			onTap: _onItemTapped,
		);
	}

	BottomAppBar bottomAppBar(BuildContext context) {
		return BottomAppBar(
			color: Colors.white,
			shape: CircularNotchedRectangle(),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: <Widget>[
					IconButton(icon: Icon(Icons.home),),
					SizedBox(),
					IconButton(icon: Icon(Icons.business),)
				],
			),
		);
	}
}