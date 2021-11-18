import 'package:flutter/material.dart';
import 'package:planterapiawordpress/constants.dart';
import 'package:planterapiawordpress/screen/welcome/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plan Terapia',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: SplashScreen(), //HomeScreen()
    );
  }
}
