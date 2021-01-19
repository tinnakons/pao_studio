import 'package:flutter/material.dart';
import 'package:pao_studio/views/login.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashLoad(),
  ));
}

class SplashLoad extends StatefulWidget {
  @override
  _SplashLoadState createState() => _SplashLoadState();
}

class _SplashLoadState extends State<SplashLoad> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      /*loadingText: Text(
        'LOADING...',
        style: new TextStyle(
              fontFamily: 'DBMomentXBold',
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
      ),*/
      seconds: 5,
      routeName: "/",
      navigateAfterSeconds: new MyApp(),
      title: new Text(
        'LOADING...',
        style: new TextStyle(
            fontFamily: 'DBMomentXBold',
            fontWeight: FontWeight.bold,
            fontSize: 20.0),
      ),
      image: Image(
        image: AssetImage('assets/images/logo.png'),
        fit: BoxFit.contain,
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: MediaQuery.of(context).size.width * 0.4,
      loaderColor: Colors.green,
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R-PAO Studio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'R-PAO Studio'),
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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Login(
        title: widget.title,
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/
    );
  }
}
