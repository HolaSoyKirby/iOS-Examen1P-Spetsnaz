import 'package:flutter/material.dart';
import './pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
        home: Center(
      child: CountPage(),
    ));
  }
}
