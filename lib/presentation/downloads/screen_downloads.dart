import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/responsive.dart';
import 'package:netflix/infrastructure/api_key.dart';
import 'package:netflix/presentation/downloads/widgets/download_image_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
             Row(
              children: [
               const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                kwidth10,
                Text(
                  "Smart Downloads",
                  style: TextStyle(fontSize: ResponsiveWidget.isSmallScreen(context)
            ? 28
            : ResponsiveWidget.isMediumScreen(context)
                ? 12
                : 16,),
                ),
              ],
            ),
            kheight10,
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Introducing Downloads for you",
                style: TextStyle(fontSize: ResponsiveWidget.isSmallScreen(context)
            ? 30
            : ResponsiveWidget.isMediumScreen(context)
                ? 35
                : 38, fontWeight: FontWeight.bold),
              ),
            ),
            kheight10,
            Text(
              textAlign: TextAlign.center,
              "We will download a personalised selection of movies and shows for you, so there is always somthing to watch on your device",
              style: TextStyle(
                color: Colors.grey,
                fontSize: ResponsiveWidget.isSmallScreen(context)
                    ? 18
                    : ResponsiveWidget.isMediumScreen(context)
                        ? 26
                        : 30,
              ),
            ),
            kheight20,
            BlocBuilder<DownloadsBloc, DownloadState>(
              builder: (context, state) {
                if (state.downloads.length >= 3) {
                  return SizedBox(
                    child: CircleAvatar(
                      radius: size.width * 0.45,
                      backgroundColor: Colors.grey.withOpacity(0.50),
                      child: state.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : Stack(
                              fit: StackFit.loose,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 26, left: 19),
                                  child: download_image_widget(
                                    imageurl:
                                        "$imageAppendUrl${state.downloads[2].posterPath}",
                                    size: size,
                                    angle: size.width * .033,
                                    leftmargin: 165,
                                    rightmargin: 0,
                                    topmargin: 0,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 34, top: 46),
                                  child: download_image_widget(
                                    imageurl:
                                        "$imageAppendUrl${state.downloads[1].posterPath}",
                                    size: size,
                                    angle: size.width * -.031,
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
                                        "$imageAppendUrl${state.downloads[0].posterPath}",
                                  ),
                                ),
                              ],
                            ),
                    ),
                  );
                } else {
                  return CircleAvatar(
                    radius: size.width * 0.40,
                    backgroundColor: Colors.grey.withOpacity(0.50),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
            kheight10,
            kheight20,
            SizedBox(
              height: size.height * 0.06,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: const Text(
                  "Setup",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            kheight10,
            SizedBox(
              height: size.height * 0.06,
              child: MaterialButton(
                color: Colors.white,
                onPressed: () {},
                child: const Text("See what you can Download",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
