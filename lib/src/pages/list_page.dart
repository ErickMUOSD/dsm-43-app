import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<int> _list = [];
  int _lastItem = 0;
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _addMoreItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('lists'),
        ),
        body: Stack(
          children: [
            _listWidget(),
            _wdigetLoading(),
          ],
        ));
  }

  Widget _listWidget() {
    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (BuildContext context, index) {
        final image = _list[index];
        return Image(
            image: NetworkImage('https://picsum.photos/id/$image/500/300'));
      },
      itemCount: _list.length,
    );
  }

  void _addMoreItems() {
    setState(() {
      for (var i = 0; i < 10; i++) {
        _lastItem += i;
        _list.add(_lastItem);
      }
    });
  }

  Future<void> fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    Timer(duration, requestHTTP);
  }

  void requestHTTP() {
    _isLoading = false;
    _addMoreItems();
  }

  Widget _wdigetLoading() {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CircularProgressIndicator(),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
