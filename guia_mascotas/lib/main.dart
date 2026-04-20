import 'package:flutter/material.dart';
import 'features/guide/presentation/guide_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GuidePageView(),
      debugShowCheckedModeBanner: false,
    );
  }
}