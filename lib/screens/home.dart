import 'package:flutter/material.dart';
import 'package:clip_ppath/shape/ShapeClipper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return new Stack(
      children: <Widget>[
        Scaffold(
            backgroundColor: Color(0xFFF0F0F0),
            bottomNavigationBar: new BottomAppBar(
              elevation: 0.0,
              shape: CircularNotchedRectangle(),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.home, color: Colors.black54,),),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star, color: Colors.black54),),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.black54),),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black54),),
                ],
              ),
            ),
            floatingActionButton: new FloatingActionButton(
              child: Icon(Icons.add), onPressed: () {},
            ),
            floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
            ),
        ClipPath(
          clipper: ShapeClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF446cb7),
                  Color(0xFF3e89c2),
                  Color(0xFF4ac1df),
                ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
                tileMode: TileMode.clamp
              ),
            ),
            child: AppBar(
              title: Text(
                'ClipPath',
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
        )
      ],
   );
  }
}