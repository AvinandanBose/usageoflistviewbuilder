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
        title: const Text('Sliver AppBar Example'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: true,
            expandedHeight: 140,
            collapsedHeight: 141,
            centerTitle: true,
            elevation: 0,
            flexibleSpace: LayoutBuilder(builder: (context, constraint) {
              return FlexibleSpaceBar(
                centerTitle: true,
                title: const AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: 1, //0 for No opacity
                  child: Text(
                    'My Name',
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                background: Container(
                  decoration: const BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.brown, Colors.grey]),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
