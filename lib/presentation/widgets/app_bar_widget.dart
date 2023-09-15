import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 12),
        child: Row(
          children: [
            Expanded(
                child: Text(
              title,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            )),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
              color: Colors.white,
            ),
            Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
