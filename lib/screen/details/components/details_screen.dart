import 'package:flutter/material.dart';
import 'package:planterapiawordpress/screen/home/components/people.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ekipa Plan Terapii"),
        centerTitle: true,
      ),
      body: People(),
    );
  }
}