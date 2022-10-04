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
      body: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(), → You cannot scroll if this is called
         shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Text("index: $index"),
          );
        },
      )
        
      );

  }
}
