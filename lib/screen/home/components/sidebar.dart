import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';
import 'package:planterapiawordpress/screen/details/components/details_screen.dart';
import 'package:planterapiawordpress/screen/details/components/info.dart';
import 'package:planterapiawordpress/screen/details/components/project_info.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(kDefaultPadding),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 99,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/images/logo500x500.png"), fit: BoxFit.fill,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.gesture, color: Colors.grey[700]),
            title: Text('Dowiedz się więcej o projekcie', style: TextStyle(fontSize: 15)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectInfo()
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline, color: Colors.grey[700]),
            title: Text('Ekipa Plan Terapii', style: TextStyle(fontSize: 15)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen()
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link, color: Colors.grey[700]),
            title: Text('Link do naszej strony www', style: TextStyle(fontSize: 15)),
            onTap: () => launch("http://planterapia.pl/"),
          ),
          ListTile(
            leading: Icon(Icons.filter_vintage, color: Colors.grey[700]),
            title: Text('Jak używać aplikacji', style: TextStyle(fontSize: 15)),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.fingerprint, color: Colors.grey[700]),
            title: Text('Informacje', style: TextStyle(fontSize: 15)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Info()
                ),
              );
            },
          ),
          Spacer(),
          Text(
            "All rights reserved @ STOCKET",
            style: TextStyle(fontSize: 10, color: Colors.grey[900],),
          ),
          SizedBox(height: 12,)
        ],
      ),

    );
  }
}