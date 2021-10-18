import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = 'User';
  String _email = 'adress@email.com';
  String _password = 'qwrt';
  String _date = 'qwrt';

  TextEditingController _inputFieldDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            _createInput(),
            const Divider(),
            _emailInput(),
            const Divider(),
            _passwordInput(),
            const Divider(),
            _datePicker(context),
            _profile(),
          ],
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
        suffixIcon: const Icon(Icons.person),
        icon: const Icon(Icons.ac_unit_rounded),
      ),
      onChanged: (text) {
        _name = text;
      },
    );
  }

  Widget _profile() {
    return ListTile(
      title: Text('Mi Nombre es $_name'),
      subtitle: Text('Email adress es $_email'),
    );
  }

  Widget _emailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('letras ${_email.length}'),
        hintText: 'NOmbre de la persona',
        labelText: 'Nombre',
        suffixIcon: const Icon(Icons.alternate_email),
        icon: const Icon(Icons.email),
      ),
      onChanged: (email) {
        _email = email;
      },
    );
  }

  Widget _passwordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('letras ${_password.length}'),
        hintText: 'NOmbre de la persona',
        labelText: 'Nombre',
        suffixIcon: const Icon(Icons.password),
        icon: const Icon(Icons.password),
      ),
      onChanged: (email) {
        _password = email;
      },
    );
  }

  Widget _datePicker(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('letras ${_password.length}'),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: const Icon(Icons.date_range),
        icon: const Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2040),
    );
    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }
}
