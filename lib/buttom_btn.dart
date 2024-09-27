import 'package:flutter/material.dart';


class buttom_btn extends StatelessWidget {
  buttom_btn({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(child: Text(
          buttonTitle,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
        color: Colors.pink,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 8),
        height: 65,
      ),
    );
  }
}