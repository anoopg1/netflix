import 'package:flutter/material.dart';

class SearchResultImageWidget extends StatelessWidget {
  const SearchResultImageWidget({super.key, required this.imageUrl, required this.itemCount});

final String imageUrl;
final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          childAspectRatio: 1 / 1.5),
      itemCount: itemCount,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w440_and_h660_face/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg"))),
      ),
    );
  }
}
