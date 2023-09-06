import 'package:cw6/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.flutter});
  final Buildings flutter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kuwait city landMarks"),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [Image.network(flutter.Image), Text("")]),
    );
  }
}
