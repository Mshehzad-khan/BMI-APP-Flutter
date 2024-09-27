import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  const RoundIconButton({super.key, required this.icon , required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 90,
        height: 65,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.blueGrey.shade600,
      onPressed: onPressed,
      child: Icon(icon),

    );
  }
}