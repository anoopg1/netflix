import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [Text("11"), Text("JAN")],
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.themoviedb.org/t/p/w440_and_h660_face/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg"))),
              ),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "BARBIE",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add_alert)),
                      const Text("Remind me"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline)),
                      const Text("Info"),
                    ],
                  ),
                ],
              )
            ],
          ),
          Text("Coming on Friday"),
          Text(
            "NETFLIX",
            style: TextStyle(color: Colors.red),
          ),
          Text(
              "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.")
        ],
      ),
    );
  }
}
