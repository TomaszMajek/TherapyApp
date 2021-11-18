import 'package:flutter/material.dart';
import 'package:planterapiawordpress/screen/details/components/details_screen.dart';

import '../../../constants.dart';

class People extends StatelessWidget {
  const People({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Wrap(
        //alignment: WrapAlignment.end,
        spacing: 10,
        children: <Widget>[
          SizedBox(height: 25),
          RecommendList(
            image: "assets/images/ekipa/milosz.jpg",
            title: "Miłosz",
            subtitle: "Prezes",
//            press: () {
//              Navigator.push(
//                  context, MaterialPageRoute(
//                builder: (context) => DetailsScreen(),
//              )
//              );
//            },
          ),
          RecommendList(
            image: "assets/images/ekipa/natalia.jpg",
            title: "Natalia",
            subtitle: "Kierownik artystyczny",
//            press: () {
//              Navigator.push(
//                  context, MaterialPageRoute(
//                builder: (context) => DetailsScreen(),
//              )
//              );
//            },
          ),
          RecommendList(
            image: "assets/images/ekipa/krystian.jpg",
            title: "Krystian",
            subtitle: "Operator kamery i montaż",
//            press: () {
//              Navigator.push(
//                context, MaterialPageRoute(
//                  builder: (context) => DetailsScreen(),
//                )
//              );
//            },
          ),
          RecommendList(
            image: "assets/images/ekipa/blazej.jpg",
            title: "Błażej",
            subtitle: "Operator kamery",
//            press: () {
//              Navigator.push(
//                context, MaterialPageRoute(
//                  builder: (context) => DetailsScreen(),
//                )
//              );
//            },
          ),
          RecommendList(
            image: "assets/images/ekipa/tomek.jpg",
            title: "Tomasz",
            subtitle: "Aplikacja mobilna",
//            press: () {
//              Navigator.push(
//                context, MaterialPageRoute(
//                  builder: (context) => DetailsScreen(),
//                )
//              );
//            },
          ),
        ],
      ),
    );
  }
}

class RecommendList extends StatelessWidget {
  const RecommendList({
    Key key, this.image, this.title, this.subtitle, this.price, this.press,
  }) : super(key: key);

  final String image, title, subtitle;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      //width: size.width,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.6,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kTextColor.withOpacity(0.33),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10)
                ),
                child: Image.asset(image),
              ),
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.33),
                    )
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                              text: "$subtitle".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)
                              )
                          )
                        ],
                      ),
                    ),
                    Spacer(),
//                  Text(
//                    '\$$price',
//                    style: Theme.of(context)
//                        .textTheme
//                        .button
//                        .copyWith(color:kPrimaryColor),
//                  )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

