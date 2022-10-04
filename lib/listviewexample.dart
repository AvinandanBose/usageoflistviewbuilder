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
      body: TextButton(
        onPressed: (){
          setState(() {
            count= count+1;
          });
        },
        child: Text('$count'),
      )
    );
  }
}
