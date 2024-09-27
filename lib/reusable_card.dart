
import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  const Reusablecard({super.key, required this.colour,  required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin:  EdgeInsets.all(10),

        width: 200,
        height: 240,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(12),
        ),
        child: cardChild,
      ),
    );
  }
}