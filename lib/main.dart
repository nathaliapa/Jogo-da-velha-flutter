import 'package:flutter/material.dart';
import 'package:flutter_avaliacao/menu_page.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color:Colors.red,
        ),
        primaryColor: Colors.red,
        visualDensity:  VisualDensity.adaptivePlatformDensity,
      ),
      home: MinhaHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MinhaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _screen();
  }

  Widget _screen() {
    return Stack(
      children:<Widget> [
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffED213A),Color(0xff93291E)]),
          navigateAfterSeconds: Menu(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage("assets/images/logo.png"),
              fit: BoxFit.none,
              scale: 6.0,
            ) ,
          ),
        )
      ],
    );

  }
}