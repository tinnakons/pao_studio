import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String title;
  Login({Key key, this.title}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
//burapol.uss

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          Text('Login'),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
            children: <Widget>[TextFormField(
              
            ), TextFormField()],
          ))
        ],
      ),
    ));
  }
}
