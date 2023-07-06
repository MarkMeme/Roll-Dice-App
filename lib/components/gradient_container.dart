import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  Color color1;
  Color color2;
  Widget widget;

  GradientContainer(
      {super.key,
      required this.widget,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [color1, color2],
      )),
      child: widget,
    );
  }
}
