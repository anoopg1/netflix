import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/infrastructure/api_key.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';
import 'dart:math' as math;

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //       .add(DownloadsEvent.getDownloadsImages());
    // });
    BlocProvider.of<DownloadsBloc>(context)
        .add(DownloadsEvent.getDownloadsImages());

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            kheight10,
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                kwidth10,
                Text(
                  "Smart Downloads",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const Text(
              textAlign: TextAlign.center,
              "Introducing Downloads for you",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            const Text(
              textAlign: TextAlign.center,
              "We will doenload a personalised selection of movies and shows for you, so there is always somthing to watch on your device",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            kheight20,
            BlocBuilder<DownloadsBloc, DownloadState>(
              builder: (context, state) {
                return SizedBox(
                  child: CircleAvatar(
                    radius: size.width * 0.40,
                    backgroundColor: Colors.grey.withOpacity(0.50),
                    child: state.isLoading
                        ? Center(child: CircularProgressIndicator())
                        : Stack(
                            fit: StackFit.loose,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 30, top: 36),
                                child: download_image_widget(
                                  imageurl:
                                      "$imageAppendUrl${state.downloads![0].posterPath}",
                                  size: size,
                                  angle: 15,
                                  leftmargin: 220,
                                  rightmargin: 0,
                                  topmargin: 0,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 34, top: 55),
                                child: download_image_widget(
                                  imageurl:
                                      "$imageAppendUrl${state.downloads![1].posterPath}",
                                  size: size,
                                  angle: -15,
                                  leftmargin: 0,
                                  rightmargin: 40,
                                ),
                              ),
                              Center(
                                child: download_image_widget(
                                  size: size,
                                  angle: 0,
                                  leftmargin: 0,
                                  rightmargin: 0,
                                  imageurl:
                                      "$imageAppendUrl${state.downloads![4].posterPath}",
                                ),
                              ),
                            ],
                          ),
                  ),
                );
              },
            ),
            kheight10,
            kheight20,
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                "Setup",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              onPressed: () {},
              child: const Text("See what you can Download",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}

class download_image_widget extends StatelessWidget {
  const download_image_widget({
    super.key,
    required this.size,
    required this.angle,
    required this.leftmargin,
    required this.rightmargin,
    this.topmargin,
    this.bottommargin,
    required this.imageurl,
  });

  final Size size;
  final double angle;
  final double? leftmargin;
  final double? rightmargin;
  final double? topmargin;
  final double? bottommargin;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * math.pi / 180,
      child: Container(
        margin: EdgeInsets.only(left: leftmargin!, right: rightmargin!),
        height: size.width * 0.58,
        width: size.width * 0.33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageurl))),
      ),
    );
  }
}
