import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacje"),
        centerTitle: true,
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "PLAN TERAPIA ",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: "2020",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding + 5),
            child: Text(
              "Kontakt",
              style: TextStyle(
                fontFamily: "Lato-Black.ttf",
                fontSize: 16.5,
                fontWeight: FontWeight.w700,
                color: kTextColor,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, top: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.phone, size: 20,),
                Text("  603 233 382"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, top: 4),
            child: Row(
              children: <Widget>[
                Icon(Icons.email, size: 20,),
                Text("  info@planterapia.pl"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
