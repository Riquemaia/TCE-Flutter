import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feneco_app/screens/prefeituras_detalhes_screen.dart';
import 'package:feneco_app/screens/prefeituras_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Splash Screen Flutter'),
      routes: {
        '/prefeituras': (context) => PrefeiturasScreen(),
        '/prefeituras_detalhes': (context) => PrefeiturasDetalhesScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 5,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.deepOrange, Colors.yellowAccent],
        ),
        navigateAfterSeconds: PrefeiturasScreen(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/feneco_app.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ],
  );
}
/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
