import 'package:flutter/material.dart';
import 'GradientAppbar.dart';
import 'HomePageBody.dart';
import 'PlanetDAO.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      drawer: new Drawer(),
      body: new Column(
        children: <Widget>[
          new GradientAppbar("Journey"),
          new HomePageBody(PlanetDao.planets[0]),
          new HomePageBody(PlanetDao.planets[1]),
          new HomePageBody(PlanetDao.planets[2]),          
        ],
      ), backgroundColor: new Color(0xFF333366).withBlue(130),
    );
  }
}

