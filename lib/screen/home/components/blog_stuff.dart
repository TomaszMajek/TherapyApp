import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:planterapiawordpress/globals.dart';
import 'package:html/parser.dart';

class BlogStuffRow extends StatelessWidget {
  const BlogStuffRow({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  Future<List<News>> _fetchWpPosts() async {
    var data = await http
        .get('http://planterapia.pl/index.php/wp-json/wp/v2/posts?-embed');
    var jsonData = jsonDecode(data.body);
    List<News> newsPosts = [];

    for (var u in jsonData) {
      News news = News(
        index: u["index"],
        title: u["title"]["rendered"],
        entry: u["excerpt"]["rendered"],
        content: u["content"]["rendered"],
        image: u["better_featured_image"]["media_details"]["sizes"]["medium"]
            ["source_url"],
      );
      newsPosts.add(news);
      contentString = parse(news.content);
      parsedString = parse(contentString.body.text).documentElement.text;
      news.content = parsedString.replaceAll("\n\n\n", "\n");
    }
    return newsPosts;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width * 0.9,
      child: FutureBuilder(
        future: _fetchWpPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                    child: Image.asset(
                  "assets/icons/loading.gif",
                  height: 100,
                )),
              ),
            );
          } else {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 25,
                          color: Colors.grey[600].withOpacity(0.13),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          snapshot.data[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(snapshot.data[index])),
                    );
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 0,
                );
              },
            );
          }
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final News news;
  DetailPage(this.news);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Artykuł"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding + 5),
              child: Column(
                children: <Widget>[
                  Text(
                    news.title,
                    style: TextStyle(
                      fontFamily: "Muli-Bold.ttf",
                      fontSize: 20,
                      color: kTextColor,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 0),
                          blurRadius: 25,
                          color: Colors.grey[600].withOpacity(0.13),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Image.network(
                        news.image,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/images/divider.png"),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      news.content,
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 16.5,
                        color: kTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class News {
  int index;
  String title;
  String entry;
  String content;
  String image;

  News({
    this.index,
    this.title,
    this.entry,
    this.content,
    this.image,
  });
}
