import 'package:flutter/material.dart';
import 'package:myfirstapplication/bottomnavigation.dart';
import 'package:myfirstapplication/newpage.dart';
import 'package:myfirstapplication/newui.dart';
import 'myapp.dart';

void main() {
  runApp(const Myapp());
}



class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Newui(),
    );
  }
}