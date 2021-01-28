import 'package:flutter/material.dart';

class cardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [_cardTipo1(), SizedBox(height: 30), _cardTipo2()],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo'),
            subtitle: Text(
                'Aca esta el subtitulo de este gran titulo que es una futura tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/tenor.gif'),
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2019/12/20/23/07/landscape-4709500_960_720.jpg'),
            fadeInDuration: Duration(milliseconds: 1),
          ),
/*           Image(image: NetworkImage('https://via.placeholder.com/2120x1414')),*/
          Container(
              padding: EdgeInsets.all(10), child: Text('Algun placeholder'))
        ],
      ),
    );
  }
}
