

dataTypeEntry() {
	print('------- data type entry ------- \n');
//	numberType();
//	boolType();
	stringType();
}


numberType() {
	print('------- number type -------');

	var number = 1; // dart会自动推断为`int`类型
	int value = 1; // 显示的声明为`int`类型
	print(number == value); // true

	var floatNumber = 1.0; // 自动推断为`double`类型
	double floatValue = 1.0; // 显示的声明为`double`类型
	double floatValueCast = 1; // Dart2.1版本后，会自动的转换为`double`类型

	print(floatNumber == floatValue); // true, 类型和值都相同
	print(floatNumber == floatValueCast); // true 类型和值都相同
}


boolType() {
	print('------- Boolean type -------');
	var b = false;
	var c = true;
	bool d; // 声明变量不赋值的情况下，默认为`null`
	bool e = true;
	print('b = $b');
	print('c = $c');
	print('d = $d'); // null
	print('e = $e');
}

stringType() {
	print('------- String type -------');

	var s1 = 'Hello Dart'; // 自动推动为`String`类型
	String s2 = 'Flutter'; // 显示定位为`String`类型
	print('s1 = $s1');
	print('s2 = $s2');

	// 虽然手动换行，但是输出的时候还是在一行
	var s3 = '我是'
		'一个'
		'开发者';
	print('s3 = $s3');  // 我是一个开发者

	// 多行字符串

	var s4 = '''
		我是一个
		软件
		开发者
	''';
	print('s4 = $s4');



}
