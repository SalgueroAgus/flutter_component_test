import 'package:flutter/material.dart';

class avatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.soriana.com/medias/sys_master/images/images/h3e/h01/8951923310622.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.soriana.com/medias/sys_master/images/images/h3e/h01/8951923310622.jpg'),
          placeholder: AssetImage('assets/tenor.gif'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
