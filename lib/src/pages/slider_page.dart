import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0, _width = 100, _height = 100;
  bool _enableCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLiders'),
      ),
      body: Column(
        children: [
          _slider(),
          _checkBox(),
          _switchTitle(),
          _image(),
        ],
      ),
    );
  }

  Widget _slider() {
    return Slider(
        value: _sliderValue,
        min: 200,
        max: 500,
        label: 'SLider',
        onChanged: (_enableCheck)
            ? (value) {
                setState(() {
                  _sliderValue = value;
                });
              }
            : null);
  }

  Widget _image() {
    return Image(
      width: _sliderValue,
      height: 150,
      fit: BoxFit.contain,
      image: const NetworkImage(
          'https://pbs.twimg.com/media/FBwryNfXMBAq7gm?format=jpg&name=900x900'),
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: const Text('Enable resize image'),
        value: _enableCheck,
        onChanged: (value) {
          setState(() {
            _enableCheck = value!;
          });
        });
  }

  Widget _switchTitle() {
    return SwitchListTile(
        title: const Text('Enable resize image'),
        value: _enableCheck,
        onChanged: (value) {
          setState(() {
            _enableCheck = value;
          });
        });
  }
}
