import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _list = [
    1,
    2,
    3,
    4,
    5,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('asdasd'),
      ),
      body: _listWidget(),
    );
  }

  Widget _listWidget() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        final image = _list[index];
        return Image(
            image: NetworkImage('https://picsum.photos/id/${image}/100/150'));
      },
      itemCount: _list.length,
    );
  }
}
