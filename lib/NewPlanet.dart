import 'package:flutter/material.dart';
import 'DataSource.dart';
import 'PlanetDAO.dart';

class NewPlanet extends StatelessWidget {
  
  NewPlanet(this.planet);

  final Planet planet;  

  @override
  Widget build(BuildContext context) {

  final basetTextStyle = const TextStyle(fontFamily: 'Poppins');
  final headerTextStyle = basetTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600
  );

  final regularTextStyle = basetTextStyle.copyWith(
    color: const Color(0xffb6b2df),
    fontSize: 9.0,
    fontWeight: FontWeight.w400
  );

  final subHeaderTextStyle = basetTextStyle.copyWith(
    fontSize: 12.0,
    color: Colors.white
  );

  

    final planetThumbnail = new Container(
    margin: new EdgeInsets.symmetric(vertical: 16.0),
    alignment: FractionalOffset.centerLeft,
    child: new Image(
      image: new AssetImage(planet.image),
      height: 92.0,
      width: 92.0,
    ),
  );

  final planetCardContent = new Container(    
    margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),  
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(height: 4.0,),
        new Text(planet.name,
        style: headerTextStyle,),
        new Container(height: 10.0,),
        new Text(planet.location,
        style: subHeaderTextStyle,),
        new Container(
          margin: new EdgeInsets.symmetric(vertical: 8.0),
          height: 2.0,
          width: 18.0,
          color: new Color(0xff00c6ff),
        ),
        new Row(
          children: <Widget>[
            new Icon(Icons.location_on, size: 14.0, color: Colors.white,),
            new Container(width: 8.0,),
            new Text(planet.distance, style: regularTextStyle,),
            new Container(width: 24.0,),
            new Icon(Icons.flight_land, size: 14.0, color: Colors.white,),
            new Container(width: 8.0,),
            new Text(planet.gravity, style: regularTextStyle,)
          ],
        )
      ],
    ),
  );

  final planetCard = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0)
        )
      ]
    ),
  );
    
    return new Container(
      margin: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        left: 24.0,
        right: 24.0
      ),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
          planetCardContent,           
        ],
      ),
    );
  }
}