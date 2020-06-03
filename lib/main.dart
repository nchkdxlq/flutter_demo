import 'package:flutter/material.dart';
import 'package:flutterdemo/Container/ContainerEntry.dart';
import 'package:flutterdemo/Util.dart';
import 'package:flutterdemo/bottom_navigation_bar/DefaultBottomNavigation.dart';
import 'package:flutterdemo/bottom_navigation_bar/keep_alive/KeepAliveNavigation.dart';
import 'package:flutterdemo/functional_widget/functional_widget.dart';
import 'package:flutterdemo/layout/LayoutEntry.dart';
import 'package:flutterdemo/scrollable_widget/ScrollableWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          layoutEntry(),
          containerEntry(),
          bottomNavigationBarEntry(),
          keepAliveNavigationEntry(),
          scrollableWidget(),
          functionalWidget(),
        ],
      )
    );
  }

  Widget layoutEntry() {
    return rowItem('Layout', LayoutEntry());
  }

  Widget containerEntry() {
    return rowItem('Container Widget', ContainerEntry());
  }

  Widget bottomNavigationBarEntry() {
    return rowItem('default BottomNavigation', DefaultBottomNavigation());
  }

  Widget keepAliveNavigationEntry() {
    return rowItem('keepAlive BottomNavigation', KeepAliveNavigation());
  }

  Widget scrollableWidget() {
    return rowItem('scrollable Widget', ScrollableWidget());
  }

  Widget functionalWidget() {
    return rowItem('功能组件', FunctionalWidget());
  }


  Widget rowItem(String title, Widget destWidget) {
    return indicatorRowItem(title, destWidget, context);
  }
}
