import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _list = [];
  int _lastItem = 0;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addList();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _addList();
      }
    });
  }

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
      controller: _scrollController,
      itemBuilder: (BuildContext context, index) {
        final image = _list[index];
        return Image(
            image: NetworkImage('https://picsum.photos/id/${image}/500/300'));
      },
      itemCount: _list.length,
    );
  }

  void _addList() {
    setState(() {
      for (var i = 0; i < 10; i++) {
        _lastItem += i;
        _list.add(_lastItem);
      }
    });
  }
}
