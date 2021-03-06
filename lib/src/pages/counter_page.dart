import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Numero de clicks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '$_contable',
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: _buttonsCounter());
  }

  Widget _buttonsCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const Spacer(),
        FloatingActionButton(
          onPressed: _decrement,
          child: const Icon(
            Icons.remove,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          onPressed: _increment,
          child: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }

  void _increment() {
    setState(() {
      _contable++;
    });
  }

  void _decrement() {
    setState(() {
      _contable--;
    });
  }

  void _reset() {
    setState(() {
      _contable = 0;
    });
  }
}
