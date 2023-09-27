import 'package:flutter/material.dart';

import 'package:netflix/presentation/fast%20laugh/widgets/video_items.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4')),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4')),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4')),
            looping: false,
            autoplay: true,
          ),
        ],
      ),
    );
  }
}
