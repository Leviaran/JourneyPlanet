import 'package:flutter/material.dart';
import 'GradientAppbar.dart';
import 'HomePageBody.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppbar("Journey"),
          new HomePageBody()
        ],
      ),
    );
  }
}

