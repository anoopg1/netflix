import 'package:flutter/material.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w440_and_h660_face/dg9e5fPRRId8PoBE0F6jl5y85Eu.jpg"))),
    );
  }
}
