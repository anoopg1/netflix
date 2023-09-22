import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/home_image_widget.dart';
import 'package:netflix/presentation/home/widgets/home_main_container.dart';
import 'package:netflix/presentation/home/widgets/horizontal_list_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "NETFLIX",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              HomeMainContainer(),
              kheight20,
              Text(
                "Released in the Past Year",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kheight20,
              Horizontal_list_widget(
                builderWidget: HomeImageWidget(),
              ),
              kheight10,
              Text(
                "Trending Movies",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kheight10,
              Horizontal_list_widget(
                builderWidget: HomeImageWidget(),
              ),
              kheight10,
              Text(
                "Top TV shows in India Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kheight10,
              Horizontal_list_widget(builderWidget: HomeImageWidget())
            ],
          ),
        ));
  }
}
