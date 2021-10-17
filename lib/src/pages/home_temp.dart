import 'package:flutter/material.dart';

class HomePageTemp extends StatefulWidget {
  HomePageTemp({Key? key}) : super(key: key);

  @override
  _HomePageTempState createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Helloo $index'),
            leading: const Icon(Icons.ac_unit_sharp),
            subtitle: const Text('Subb'),
          );
        },
      ),
    );
  }
}
