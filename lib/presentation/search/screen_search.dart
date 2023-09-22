import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';

import 'package:netflix/infrastructure/api_key.dart';
import 'package:netflix/presentation/search/search_image_widget.dart';

final String movieQuery = '';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchIdle());
    });

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              onChanged: (value) => BlocProvider.of<SearchBloc>(context)
                  .add(SearchEvent.searchMovies()),
                  
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Top Searches",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultFinalList.isEmpty) {
                  if (state.searchIdleFinalList.length >= 20) {
                    return Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) => SearchImageWidget(
                                imageUrl:
                                    "$imageAppendUrl${state.searchIdleFinalList[index].imageUrl}",
                                movieName: state
                                    .searchIdleFinalList[index].movieTitle),
                            separatorBuilder: (context, index) => kheight10,
                            itemCount: 20));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                } else {
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 7,
                              crossAxisSpacing: 7,
                              childAspectRatio: 1 / 1.5),
                      itemCount: state.searchResultFinalList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "$imageAppendUrl${state.searchResultFinalList[index].imageUrl}"))),
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
