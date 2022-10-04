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
      appBar: AppBar(title: const Text('List View Builder Example'),
      centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          Container(
            height: 80,
            width: 90,
            color: Colors.green,
            child: Text('Green'),
          ),
          Container(
            height: 80,
            width: 90,
            color: Colors.red,
            child: Text('RED'),
          ),
          Container(
            height: 80,
            width: 90,
            color: Colors.yellow,
            child: Text('Yellow'),
          ),
        ],
      )

    );
  }
}
