import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage('image/Avi.jpg'),
              ),
            ),
          ),
          const Text("Avinandan Bose", style: TextStyle(color: Colors.white,fontSize: 20),),
           const SizedBox(height: 10,),
           Text("avi@email.com", style: TextStyle(color: Colors.grey[200],fontSize: 14),)
        ],
      ),

    );
  }
}
