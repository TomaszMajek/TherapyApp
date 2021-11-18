import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';
import 'package:planterapiawordpress/screen/home/components/home_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    Future.delayed(d, (){

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
          return HomeScreen();
          },
        ),
          (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kPrimaryColor, kSecondaryColor],
          )
        ),
        child: Center(
          child: Image.asset("assets/images/logo500x500.png", height: 200,),
        ),
      ),
    );
  }
}