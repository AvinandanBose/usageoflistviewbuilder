import 'package:flutter/material.dart';

import 'NewPage.dart';

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
        title: const Text('Alert Button Example'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Move To Page?'),
              titlePadding: const EdgeInsets.only(left: 80,top: 30),
              content: const Text('Are You Surely Want?'),
          contentPadding:const EdgeInsets.only(left: 60,top: 30,bottom: 30),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('No'),
                    ),
                    ElevatedButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => NewPage()),
                        );
                      },
                      child: const Text('Yes'),
                    ),

                  ],
                ),

              ],
            );
          },
        );
          },
          child: Text('Push To Page'),
        ),
      ),
    );
  }
}
