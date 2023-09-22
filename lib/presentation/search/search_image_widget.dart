import 'package:flutter/material.dart';

class SearchImageWidget extends StatelessWidget {
  const SearchImageWidget(
      {super.key, required this.imageUrl, required this.movieName});

  final String imageUrl;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imageUrl))),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
            width: MediaQuery.of(context).size.width/2.4,
              child: Text(
                movieName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: SizedBox(
            
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 23,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.play_arrow)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
