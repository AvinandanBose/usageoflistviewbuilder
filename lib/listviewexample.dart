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
        children: const <Widget>[
        ListTile(
          leading: Icon(Icons.list),
          trailing: Text('My Name'),
          title: Text('Name'),
          subtitle: Text('Avi B'),

        ),
          ListTile(
            leading: Icon(Icons.list),
            trailing: Text('My Address'),
            title: Text('Address'),
            subtitle: Text('WB, IN'),

          ),

          ListTile(
            leading: Icon(Icons.list),
            trailing: Text('My Phone'),
            title: Text('Phone'),
            subtitle: Text('999999'),

          ),


        ],


      ),

      // body: const ListTile(
      //   leading: Icon(Icons.list),
      //   trailing: Text('My Name'),
      //   title: Text('Title 1'),
      //   subtitle: Text('This tile'),
      //
      // ),

    );
  }
}
