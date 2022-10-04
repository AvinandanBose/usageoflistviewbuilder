import 'package:flutter/material.dart';
class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Button Example'),
        centerTitle: true,

      ),
      body:  Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Colors.yellow, Colors.grey]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          child: Text('My Name'),


        ),
      )
    );
  }
}
