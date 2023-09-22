import 'package:flutter/material.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image:
              DecorationImage(fit: BoxFit.fill, image: NetworkImage(imageUrl))),
    );
  }
}
