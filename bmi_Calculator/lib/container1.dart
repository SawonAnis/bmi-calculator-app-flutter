import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({
    super.key,
    required this.colour,
    this.cardChild,
    this.onClick,
  });
  final Color colour;
  final Widget? cardChild;
  final GestureTapCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
