import 'package:flutter/material.dart';
import 'package:travel_connection/home.dart';

void main() => runApp(const myApk());

// ignore: camel_case_types
class myApk extends StatelessWidget {
  const myApk({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'travel-connection',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
