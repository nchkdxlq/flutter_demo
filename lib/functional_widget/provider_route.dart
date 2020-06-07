
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/functional_widget/inherited_provider.dart';

class ProviderRoute extends StatefulWidget {
	@override
	ProviderRouteState createState() => ProviderRouteState();
}

class ProviderRouteState extends State<ProviderRoute> {

	@override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text('Provider'),),
			body: Center(
				child: _changeNotifierProvider(),
			),
		);
  }

  ChangeNotifierProvider _changeNotifierProvider() {
		return ChangeNotifierProvider<CartModel>(
			data: CartModel(),
			child: Builder(builder: (context) {
				return Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Builder(builder: (context) {
							var cart = ChangeNotifierProvider.of<CartModel>(context);
							return Text('总价: ${cart.totalPrice}');
						}),
						Builder(builder: (context) {
							print('RaisedButton build'); //在后面优化部分会用到
							return RaisedButton(
								child: Text('添加商品'),
								onPressed: () {
									// 给购物车中添加商品，添加后总价会更新
									var item = Item(price: 20.0, count: 2);
									ChangeNotifierProvider.of<CartModel>(context).add(item);
								},
							);
						})
					],
				);
			}),
		);
	}

}
