
import 'dart:collection';

import 'package:flutter/material.dart';

class InheritedProvider<T> extends InheritedWidget {

	InheritedProvider({ @required this.data, Widget child })
		: super(child: child);

	final T data;

	@override
	bool updateShouldNotify(InheritedProvider<T> old) {

		return true;
	}

}

class ChangeNotifier implements Listenable {

	List listeners = [];

	@override
  void addListener(VoidCallback listener) {
		listeners.add(listener);
  }


  @override
  void removeListener(VoidCallback listener) {
		listeners.remove(listener);
  }

  void notifyListeners() {
		listeners.forEach( (item) => item() );
	}

}


class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {

	ChangeNotifierProvider({
		Key key,
		this.child,
		this.data,
	});

	final Widget child;
	final T data;

	// 定义一个便捷方法，方便子树中的widget获取共享数据
	static T of<T>(BuildContext context, { bool listen = true }) {
		final provider = listen
		? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>()
		: context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>().widget as InheritedProvider<T>;

		return provider.data;
	}

	@override
	ChangeNotifierProviderState<T> createState() => ChangeNotifierProviderState<T>();
}

class ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>> {

	void update() {
		// 如果数据发送变化(model类调用了notifyListeners)，重新构建InheritedProvider
		setState(() => {});
	}

	@override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
		// 当Provider更新时，如果新旧数据不"=="，则解绑旧数据监听，同时添加新数据监听
		if (widget.data != oldWidget.data) {
			oldWidget.data.removeListener(update);
			widget.data.addListener(update);
		}

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
		// 给model添加监听器
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }

	@override
  Widget build(BuildContext context) {
		return InheritedProvider<T>(
			data: widget.data,
			child: widget.child,
		);
  }
}


////////////////////////////////////////////////////

class Item {

	Item({this.price, this.count});

	double price;
	int count;
}


class CartModel extends ChangeNotifier {
	// 用户保存购物车商品列表
	final List<Item> _items = [];

	// 禁止改变购物车里的商品信息
	UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

	double get totalPrice =>
		_items.fold(0, (value, item) => value + item.count * item.price);

	void add(Item item) {
		_items.add(item);
		notifyListeners();
	}

}

