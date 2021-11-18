import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndDecription extends StatelessWidget {
  const TitleAndDecription({
    Key key, this.title, this.subtitle, this.price,
  }) : super(key: key);

  final String title, subtitle;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text: "$subtitle",
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300,
                    )
                )
              ],
            ),
          ),
          Spacer(),
//          Text("\$$price", style: Theme.of(context)
//              .textTheme
//              .headline
//              .copyWith(color: kPrimaryColor),
//          ),
        ],
      ),
    );
  }
}

