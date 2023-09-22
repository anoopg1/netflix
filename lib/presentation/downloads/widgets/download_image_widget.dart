import 'package:flutter/material.dart';
import 'dart:math' as math;

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
        height: size.width * 0.68,
        width: size.width * 0.46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageurl))),
      ),
    );
  }
}
