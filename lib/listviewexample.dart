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
      body: GridView.count(
        crossAxisSpacing: 15,
        mainAxisSpacing: 70,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Hello'),
          ),
        ],
      )
        
      );

  }
}
