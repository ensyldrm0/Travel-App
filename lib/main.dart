import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'first_page.dart';
import 'main_page.dart';

void main() {
  runApp(const MyUiApp());
}

class MyUiApp extends StatelessWidget {
  const MyUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          initialRoute: "/",
    routes: {
      "/main": (context) =>MainPage(),
      "/detail":(context) =>detailPage(),
    },
      home: Scaffold(
        body: first_page(),
      ),
    );
  }
}
