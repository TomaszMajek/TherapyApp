import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';
import 'package:planterapiawordpress/screen/details/components/title_and_description.dart';

class BodyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        child: Column(
          children: <Widget>[
            TitleAndDecription(
              title: "Ciekawy nagłówek",
              subtitle: "Lorem ipsum",
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Wrap(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                      style: Theme.of(context).textTheme.headline.copyWith(color: kTextColor, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}