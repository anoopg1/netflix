import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix/presentation/new%20&%20hot/widgets/Coming_soon_widget.dart';
import 'package:netflix/presentation/new%20&%20hot/widgets/everyone_watching.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenNewandHot extends StatefulWidget {
  const ScreenNewandHot({super.key});

  @override
  State<ScreenNewandHot> createState() => _ScreenNewandHotState();
}

class _ScreenNewandHotState extends State<ScreenNewandHot>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context)
        .add(NewAndHotEvent.getComingSoonData());

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(80), child: AppBarWidget(title:" New & Hot")),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: [
                Tab(
                  text: "Coming Soon",
                ),
                Tab(
                  text: "Everyone's Watching",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ComingSoonPage(),
                  EveryoneWatchingPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
