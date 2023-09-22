import 'package:flutter/material.dart';

class Horizontal_list_widget extends StatelessWidget {
  const Horizontal_list_widget({
    super.key,
    required this.builderWidget,
  });

  final builderWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180,
        width: double.infinity,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => builderWidget,
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: 10));
  }
}
