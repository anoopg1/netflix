import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast%20laugh/widgets/video_items.dart';
import 'package:netflix/presentation/fast%20laugh/widgets/video_player.dart';
import 'package:video_player/video_player.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
    
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: VideoScreen()),
          Positioned(
              bottom: 370,
              right: 30,
              child: CircleAvatar(
                radius: 27,
                foregroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Big_Buck_Bunny_thumbnail_vlc.png/1200px-Big_Buck_Bunny_thumbnail_vlc.png"),
              )),
          Positioned(
            bottom: 60,
            left: 20,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.grey,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ),
          ),
          Positioned(
            bottom: 210,
            right: 40,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 14),
                  child: Text(
                    "Share",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 290,
            right: 40,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 14),
                  child: Text(
                    "LOL",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 130,
            right: 40,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 14),
                  child: Text(
                    "My List",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 14),
                  child: Text(
                    "Play",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
