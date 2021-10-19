import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0, _width = 100, _height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLiders'),
      ),
      body: Container(
        child: Column(
          children: [
            _slider(),
            _image(),
          ],
        ),
      ),
    );
  }

  Widget _slider() {
    return Slider(
        value: _sliderValue,
        min: 200,
        max: 500,
        label: 'SLider',
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
        });
  }

  Widget _image() {
    return Image(
      width: _sliderValue,
      height: 300,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://pbs.twimg.com/media/FBwryNfXMBAq7gm?format=jpg&name=900x900'),
    );
  }
}
