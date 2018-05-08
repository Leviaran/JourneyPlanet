import 'package:flutter/material.dart';

class GradientAppbar extends StatelessWidget {

  final String title;
  final double tinggiBar = 66.0;

  GradientAppbar(this.title);
  

  @override
  Widget build(BuildContext context){
    final double tinggiBarStatus =MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: tinggiBarStatus),
      height: tinggiBar + tinggiBarStatus,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        )
      ),
      child: new Center(
        child: new Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 36.0
          ),
          ),
      ),
    );
  }
}