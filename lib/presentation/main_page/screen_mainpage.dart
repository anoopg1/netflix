import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast%20laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_navigation_widget.dart';
import 'package:netflix/presentation/new%20&%20hot/screen_new&hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final mainPageList = const [
    ScreenHome(),
    ScreenNewandHot(),
    // ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, updatedvalue, child) => mainPageList[updatedvalue],
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
