import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_home_page/pages/top_page.dart';

void main() {
  //URLの # を取り除く
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Narihiro's Room",
      theme: ThemeData(
        fontFamily: "YuseiMagic",
      ),
      home: const TopPage(),
    );
  }
}
