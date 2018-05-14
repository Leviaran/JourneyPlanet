import 'package:flutter/material.dart';
import 'NewPlanet.dart';
import 'DataSource.dart';
import 'PlanetDAO.dart';

class HomePageBody extends StatelessWidget {

  
  Planet planet;
  HomePageBody(this.planet);

  @override
  Widget build(BuildContext context) {
    return new NewPlanet(planet);
  }
}
