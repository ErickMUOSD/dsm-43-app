import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = 'User';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [_createInput(), Divider(), _profile()],
        ));
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('letras ${_name.length}'),
        hintText: 'NOmbre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.ac_unit_rounded),
      ),
      onChanged: (text) {
        _name = text;
      },
    );
  }

  Widget _profile() {
    return ListTile(
      title: Text('NOmbre es $_name'),
    );
  }
}
