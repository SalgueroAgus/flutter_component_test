import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'diez',
    'once'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Text '),
      ),
      //body: ListView(children: _crearItems()),
      body: ListView(children: _CrearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>.empty(growable: true);
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.black,
          height: 20,
        ));
    }
    return lista;
  }

  List<Widget> _CrearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.keyboard_arrow_right),
            title: Text(item),
            subtitle: Text('Soy un numero!'),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
            height: 20,
          )
        ],
      );
    }).toList();
  }
}
