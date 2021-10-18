import 'package:flutter/material.dart';

class Avatar_Page extends StatelessWidget {
  const Avatar_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          CircleAvatar(
            child: Image(
              image: NetworkImage(
                  'https://pbs.twimg.com/media/FBwryNfXMBAq7gm?format=jpg&name=900x900'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('AYO'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              'https://pbs.twimg.com/media/FBwryNfXMBAq7gm?format=jpg&name=900x900'),
        ),
      ),
    );
  }
}
