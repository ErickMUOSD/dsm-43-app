import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(Button());

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Text('Centered'),
      ),
    ));
  }
}
