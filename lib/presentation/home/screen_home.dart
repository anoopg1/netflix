import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/infrastructure/api_key.dart';
import 'package:netflix/presentation/home/widgets/home_image_widget.dart';
import 'package:netflix/presentation/home/widgets/home_main_container.dart';
import 'package:netflix/presentation/home/widgets/horizontal_list_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.getlatestMovies());
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.getTrendingMovies());
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.getTVshows());
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
        body: ListView(
          children: [
            HomeMainContainer(),
            kheight20,
            Text(
              "Released in the Past Year",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kheight20,
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.latestmodelList.length >= 10) {
                  return Expanded(
                    child: SizedBox(
                      height: 180,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => HomeImageWidget(
                              imageUrl:
                                  "$imageAppendUrl${state.latestmodelList[index].imageUrl}"),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                          itemCount: 10),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            kheight10,
            Text(
              "Trending Movies",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kheight10,
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.trendingModelList.length >= 10) {
                  return Expanded(
                    child: SizedBox(
                      height: 180,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => HomeImageWidget(
                              imageUrl:
                                  "$imageAppendUrl${state.trendingModelList[index].imageUrl}"),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                          itemCount: 10),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            kheight10,
            Text(
              "Top TV shows in India Today",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kheight10,
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.tvshowmodelList.length >= 10) {
                  return Expanded(
                    child: SizedBox(
                      height: 180,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => HomeImageWidget(
                              imageUrl:
                                  "$imageAppendUrl${state.tvshowmodelList[index].imageUrl}"),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                          itemCount: 10),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ));
  }
}
