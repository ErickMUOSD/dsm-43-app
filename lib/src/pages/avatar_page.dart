import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          const CircleAvatar(
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
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://pbs.twimg.com/media/FBwryNfXMBAq7gm?format=jpg&name=900x900'),
        ),
      ),
    );
  }
}
