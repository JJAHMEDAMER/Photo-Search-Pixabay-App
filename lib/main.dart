import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_search_pixabay_app/pages/result_view.dart';
import 'package:photo_search_pixabay_app/pages/search_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultView(),
    );
  }
}
