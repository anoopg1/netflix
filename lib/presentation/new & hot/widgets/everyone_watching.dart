import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/infrastructure/api_key.dart';

class EveryoneWatchingPage extends StatelessWidget {
  const EveryoneWatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context)
        .add(NewAndHotEvent.getEveryonesWatching());
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.separated(
              itemBuilder: (context, index) {
                if (state.everyonewatchingList.length >= 10) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 3,
                      color: Color.fromARGB(255, 25, 24, 24).withOpacity(.9),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "$imageAppendUrl${state.everyonewatchingList[index].imageUrl}"))),
                            ),
                            kheight10,
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    state.everyonewatchingList[index].movieName,
                                    style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                            )),
                                        const Text("Play",
                                            style: TextStyle(
                                              fontSize: 10,
                                            ))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.share,
                                              color: Colors.white,
                                            )),
                                        const Text(
                                          "Share",
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.info_outline,
                                              color: Colors.white,
                                            )),
                                        const Text("Info",
                                            style: TextStyle(
                                              fontSize: 10,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            kheight10,
                            Container(
                              height: 150,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                state.comingsoonList[index].description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              separatorBuilder: (context, index) => kheight10,
              itemCount: 10),
        );
      },
    );
  }
}
