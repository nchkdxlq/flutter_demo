
import 'package:flutterdemo/StatelessBaseWidget.dart';
import 'package:flutter/material.dart';


class ListViewWidget extends StatelessBaseWidget {

  @override
  AppBar appBar(BuildContext context) {
    return AppBar(title: Text('ListView'),);
  }


  @override
  Widget body(BuildContext context) {
//    return defaultBuilder(context);
//    return listViewBuild(context);
//    return listViewSeparated(context);
    return titleListView(context);
  }

  /// 适合只有少量子组件的情况
  ListView defaultBuilder(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text('I\'m dedicating every day to you'),
        Text('Domestic life was never quite my style'),
        Text('When you smile, you knock me out, I fall apart'),
        Text('And I thought I was so smart'),
      ],
    );
  }
  
  
  
  ListView listViewBuild(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemExtent: 50.0,
      itemBuilder: (BuildContext context, int index)  {
        return ListTile(
          title: Center(
            child: Text('$index'),
          ),
        );
      },
    );
  }
  
  ListView listViewSeparated(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(color: Colors.blue,);
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Center(
            child: Text('$index'),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }

  // 带有表头
  Widget titleListView(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(title: Text('商品列表'),),
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            itemBuilder: (context, index) {
            return ListTile(title: Text('$index'),);
          }),
        )
      ],
    );
  }

}