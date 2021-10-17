import 'package:dsm_43_app/src/providers/menu_provider.dart';
import 'package:dsm_43_app/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data) {
    final List<Widget> options = [];
    if (data != null) {
      data.forEach((element) {
        final wTemp = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.cyan,
          ),
          onTap: () {},
        );
        options.add(wTemp);
      });
    } else {
      options.add(const Text('Something wen wrong'));
    }

    return options;
  }
}
