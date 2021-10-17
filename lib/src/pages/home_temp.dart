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
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Value ${options[index]} on index: $index'),
            leading: const Icon(Icons.ac_unit_sharp),
            subtitle: const Text('Subb'),
          );
        },
      ),
    );
  }

  List<ListTile> _listTile() {
    List<ListTile> list = [];

    for (var item in options) {
      final widgetTile = ListTile(
        title: Text(item),
      );
      list.add(widgetTile);
    }
    return list;
  }

  List<ListTile> _listTileShort() {
    return options.map((item) {
      return ListTile(
        title: Text(item),
      );
    }).toList();
  }
}
