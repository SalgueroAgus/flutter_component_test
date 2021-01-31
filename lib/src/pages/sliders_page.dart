import 'package:flutter/material.dart';

class slidersPage extends StatefulWidget {
  slidersPage({Key key}) : super(key: key);

  @override
  _slidersPageState createState() => _slidersPageState();
}

class _slidersPageState extends State<slidersPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() => _valorSlider = valor);
            },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
    );
  }

  _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://crhscountyline.com/wp-content/uploads/2020/03/Capture.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _crearCheckBox() {
    /*     return Checkbox(
                    value: _bloquearCheck,
                    onChanged: (valor) {
                      setState(() => _bloquearCheck = valor);
                    }); */

    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() => _bloquearCheck = valor);
        });
  }

  _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() => _bloquearCheck = valor);
        });
  }
}
