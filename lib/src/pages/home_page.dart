import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[200],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[300],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[400],
              ),
            ],
          ),
          const Text(
            'Numero de click',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[200],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[300],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber[400],
              ),
            ],
          )
        ],
      ),
    );
  }
}
