import 'package:flutter/material.dart';

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
        title: const Text('List View Builder Example'),
        centerTitle: true,
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[

          Center(child: Text('men category'),),
          Center(child: Text('Women category'),),
          Center(child: Text('Shoes category'),),
          Center(child: Text('Bags category'),),
          Center(child: Text('Electronics category'),),
          Center(child: Text('home and garden category'),),
          Center(child: Text('kids  category'),),
          Center(child: Text('beauty  category'),),

        ],

      )
    );
  }
}
