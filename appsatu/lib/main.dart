import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:appsatu/homepage/HomePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfilPage());
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
          verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageBox('assets/images/image.jpg'),
            TextBox(Colors.amber),
            TextBox(Colors.brown),
            TextBox(Colors.deepPurple)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation),
          backgroundColor: Colors.deepOrange,
        ));
  }
}

class TextBox extends StatelessWidget {
  Color _color;

  TextBox(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('Hello'),
      height: 100.0,
    );
  }
}

class ImageBox extends StatelessWidget {
  final String _assetPath;

  ImageBox(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 100.0, width: 100.0),
      decoration: BoxDecoration(color: Colors.deepOrangeAccent),
      child: Image.asset(_assetPath, fit: BoxFit.fill),
    );
  }
}
