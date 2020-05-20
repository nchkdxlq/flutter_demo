
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
//				bottom: TabBar(
//					controller: _tabController,
//					tabs: tabs.map( (e) => Tab(text: e) ).toList()
//				),
			),
			bottomNavigationBar: BottomNavigationBar( // 底部导航
				items: <BottomNavigationBarItem>[
					BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
					BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
					BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
				],
				currentIndex: _selectedIndex,
				fixedColor: Colors.blue,
				onTap: _onItemTapped,
			),
			floatingActionButton: FloatingActionButton( // 悬浮按钮
				child: Icon(Icons.add),
				onPressed: _onAdd,
			),
		);
  }


  void _onItemTapped(int index) {
		setState(() {
		  _selectedIndex = index;
		});
	}

	void _onAdd() {

	}
}