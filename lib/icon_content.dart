import 'package:flutter/material.dart';

class Icon_Content extends StatelessWidget {
  const Icon_Content({super.key, required this.icon,required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 70),
        const SizedBox(height: 12,),
        Text(label,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)],
    );
  }
}