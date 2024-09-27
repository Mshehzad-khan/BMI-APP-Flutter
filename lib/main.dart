import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
       colorScheme: ColorScheme.fromSeed(
           seedColor: Colors.blue,
       brightness: Brightness.dark),
      ),
      home: const InputPage(),
    );
  }

}


