import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';

class ProjectInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacje o projekcie"),
        centerTitle: true,
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding + 10, left: kDefaultPadding + 10, right: kDefaultPadding + 10),
            child: Text(
              "Naszą wizją jest świat z dobrym zdrowiem psychicznym dla wszystkich. Naszą misją jest pomaganie ludziom w zrozumieniu, ochronie i utrzymaniu ich zdrowia psychicznego. Zapobieganie stanowi sedno naszych działań, ponieważ najlepszym sposobem radzenia sobie z kryzysem jest zapobieganie mu w pierwszej kolejności.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.5,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding + 10),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.33),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/project_info.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}