import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _contable = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Numero de clicks',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '$_contable',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _contable++;
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
      ),
    );
  }
}
