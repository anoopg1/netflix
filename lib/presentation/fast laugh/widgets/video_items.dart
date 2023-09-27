import 'package:chewie/chewie.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
  const VideoItems({
    super.key,
    required this.videoPlayerController,
    required this.looping,
    required this.autoplay,
  });
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  @override
  State<VideoItems> createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  late ChewieController? _chewieController;

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 5 / 8,
        autoInitialize: true,
        autoPlay: widget.autoplay,
        looping: widget.looping,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      );
    }

    return Center(
      child: Container(),
    );
  }
}
