
import 'package:flutter/cupertino.dart';

void functionEntry() {
	print('------- function_entry -------');

	var hello = sayHello('Flutter');
	print(hello);
}


// 没有显示的声明返回值类型，dart会自动推导它的返回值类型.

// 返回类型推断为 bool 类型
isNoble(int atomicNumber) {
	return atomicNumber != null;
}

// 如果一个函数没有显示的`return`, 那么它默认会返回`null`
testNullReturn() {}



// 箭头函数
sayHello(name) => 'Hello $name';





/*
* dart中支持两种可选参数: 命名可选参数和位置可选参数， 当两种可选参数不能同时使用
*
* */

// 命名可选参数使用大括号{}，默认值用冒号:
/*
* 在命名可选参数的函数中，大括号外的为必填参数
* 大括号内的参数可以是0个或者多个，并且和顺序无关，在调用函数的时候需要`指明参数名`, 没有复制的参数值为`null`
* */

// 使用`@required`注解来标注名称参数, 这表示这是一个必填参数。
void enableFlags({bool bold = false, bool hidden = false, @required String content}) {
	// ...
}



// 位置可选参数使用方括号[]，默认值用等号=