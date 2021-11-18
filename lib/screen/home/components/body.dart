import 'package:flutter/material.dart';
import 'package:planterapiawordpress/screen/home/components/title_without_button.dart';
import 'blog_stuff.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          TitleWithoutButton(title: "Aktualności"),
          BlogStuffRow(),
          //People(),
        ],
      ),
    );
  }
}

