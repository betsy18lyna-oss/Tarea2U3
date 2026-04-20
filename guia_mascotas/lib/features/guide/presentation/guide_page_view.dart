import 'package:flutter/material.dart';
import '../data/guide_repository.dart';
import '../domain/guide_page.dart';
import 'progress_bar_view.dart';

class GuidePageView extends StatefulWidget {
  @override
  _GuidePageViewState createState() => _GuidePageViewState();
}

class _GuidePageViewState extends State<GuidePageView> {
  final repository = GuideRepository();
  final PageController controller = PageController();

  int currentPage = 0;
  late List<GuidePage> pages;

  @override
  void initState() {
    super.initState();
    pages = repository.getPages();
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentPage + 1) / pages.length;

    return Scaffold(
      appBar: AppBar(title: Text("Guía de Mascotas")),
      body: Column(
        children: [
          ProgressBar(value: progress),
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (_, index) {
                return Center(
                  child: Text(
                    pages[index].title,
                    style: TextStyle(fontSize: 22),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}