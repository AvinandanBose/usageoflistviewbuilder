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

      body: const ListTile(
        leading: Icon(Icons.list),
        trailing: Text('My Name'),
        title: Text('Title 1'),
        subtitle: Text('This tile'),

      ),

    );
  }
}
