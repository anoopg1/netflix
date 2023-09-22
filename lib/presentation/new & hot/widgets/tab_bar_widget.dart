import 'package:flutter/material.dart';
import 'package:netflix/presentation/new%20&%20hot/widgets/Coming_soon_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class NewandHotTabbar extends StatefulWidget {
  const NewandHotTabbar({super.key});

  @override
  State<NewandHotTabbar> createState() => _NewandHotTabbarState();
}

class _NewandHotTabbarState extends State<NewandHotTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'New & Hot',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: const [
                    Tab(
                      text: "Coming Soon",
                    ),
                    Tab(
                      text: "Everyone's Watching",
                    ),
                  ],
                ),
              ),
             const Expanded(
                child: TabBarView(
                    children: [ComingSoonWidget(), ComingSoonWidget()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
