import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/core/constants.dart';

class MovieWidgetNewandhot extends StatelessWidget {
  const MovieWidgetNewandhot(
      {super.key,
      required this.date,
      required this.imageUrl,
      required this.movieName,
      required this.description});
  final String date;
  final String imageUrl;
  final String movieName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          kheight20,
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      date,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text("11",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold))
                  ],
                ),
                kwidth10,
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(imageUrl))),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: Text(movieName,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                      )),
                  Text("Remind me",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      )),
                  Text(
                    "Info",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                "Coming on Friday",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          kheight10,
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                movieName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: Container(
                  height: 130,
                  width: double.infinity,
                  child: Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
