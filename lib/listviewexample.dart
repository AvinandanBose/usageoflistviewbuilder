import 'package:flutter/material.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  List<String> post = [
    'My Name',
    'My Address',
    'My Phone',
  ];

  List<String> post1 = [
    'Name',
    'Address',
    'Phone',
  ];

  List<String> post2 = [
    ' Avi B',
    'WB , IN',
    '99999',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder Example'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: post1.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.list),
            trailing: Text(post[index]),
            title: Text(post1[index]),
            subtitle: Text(post2[index]),
          );
        },
      ),
    );
  }
}
