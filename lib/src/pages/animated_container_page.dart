import 'package:flutter/material.dart';
import 'dart:math';

class animatedContainerPage extends StatefulWidget {
  @override
  _animatedContainerPageState createState() => _animatedContainerPageState();
}

class _animatedContainerPageState extends State<animatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blue;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
      ),
    );
  }

  _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
