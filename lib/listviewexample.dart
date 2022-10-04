import 'package:flutter/material.dart';
import 'dart:math';
const STAR_POINTS = 5;
class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver AppBar Example'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const Icon(Icons.menu),
            title: const Text('S I L V E R A P P B A R'),
            backgroundColor: Colors.deepPurple,
            expandedHeight: 140,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://media.istockphoto.com/photos/forest-wooden-table-background-summer-sunny-meadow-with-green-grass-picture-id1353553203?b=1&k=20&m=1353553203&s=170667a&w=0&h=QTyTGI9tWQluIlkmwW0s7Q4z7R_IT8egpzzHjW3cSas=',
                // height: 1070,
                //   width:1070,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRect(
                clipBehavior: Clip.hardEdge,
                child: Container(
                  height: 400,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipOval(
                clipper: MyClipper(),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  height: 400,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipPath(
                clipper: MyClipper2(),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
class MyClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size){
    return const Rect.fromLTRB(2,2, 200, 200); // New shape of the Oval Clipper
  }
  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false; // We Have to make the old Clipper to false
  }
}

class MyClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var path = Path();

    var radius = size.width / 2;
    var inner = radius / 2;
    var rotation = pi / 2 * 3;
    var step = pi / STAR_POINTS;

    path.lineTo(centerX, centerY - radius);

    for (var i = 0; i < STAR_POINTS; i++) {
      var x = centerX + cos(rotation) * radius;
      var y = centerY + sin(rotation) * radius;
      path.lineTo(x, y);
      rotation += step;

      x = centerX + cos(rotation) * inner;
      y = centerY + sin(rotation) * inner;
      path.lineTo(x, y);
      rotation += step;
    }

    path.lineTo(centerX, centerY - radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}