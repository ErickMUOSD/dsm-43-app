import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainer extends StatefulWidget {
  const AnimateContainer({Key? key}) : super(key: key);

  @override
  _AnimateContainerState createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.purple;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.elasticInOut,
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeSquare,
        child: const Icon(Icons.add_moderator_sharp),
      ),
    );
  }

  void changeSquare() {
    final rand = Random();

    setState(() {
      _width = rand.nextInt(300).toDouble();
      _height = rand.nextInt(300).toDouble();
      _color = Color.fromARGB(
          255, rand.nextInt(255), rand.nextInt(255), rand.nextInt(255));
      _borderRadiusGeometry =
          BorderRadius.circular(rand.nextInt(100).toDouble());
    });
  }
}
