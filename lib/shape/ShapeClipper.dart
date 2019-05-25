import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShapeClipper extends CustomClipper<Path>{
  
  @override
  Path getClip(Size size) {
    
    var path = Path();

    path.lineTo(0.0, size.height - 20);

    var primerPuntoControlInicio  = Offset(size.width /4, size.height);
    var primerPuntoControlFin     = Offset(size.width / 2.20, size.height - 68);

    path.quadraticBezierTo(primerPuntoControlInicio.dx, primerPuntoControlInicio.dy, primerPuntoControlFin.dx, primerPuntoControlFin.dy);

    var segundoPuntoControlInicio = Offset(size.width - (size.width / 3.25), size.height -135);
    var segundoPuntoControlFin    = Offset(size.width, size.height - 120);

    path.quadraticBezierTo(segundoPuntoControlInicio.dx, segundoPuntoControlInicio.dy, segundoPuntoControlFin.dx, segundoPuntoControlFin.dy);

    path.lineTo(size.width, 0.0);
    
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }



}