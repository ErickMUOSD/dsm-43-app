import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final options = ['TileOne', 'TileTWo', 'TileThree', 'TileFour'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
        ),
        body: ListView(
          children: _listTileShort(),
        ));
  }

  List<Widget> _listTile() {
    List<Widget> list = [];

    for (var item in options) {
      final widgetTile = ListTile(
        title: Text(item),
      );
      list.add(widgetTile);
    }
    return list;
  }

  List<Widget> _listTileShort() => options.map((item) {
        return ListTile(
          title: Text(item),
        );
      }).toList();
}
