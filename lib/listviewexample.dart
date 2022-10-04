import 'package:flutter/material.dart';

import 'menu_Item.dart';
import 'my_header_drawer.dart';

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
        title: const Text('Drawer Example'),
        centerTitle: true,
      ),
      drawer:  Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              MyHeaderDrawer(),
              MenuItemExp(),
            ],

          ),
        ),
      ),
    );
  }
}


