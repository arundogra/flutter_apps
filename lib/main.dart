import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      title: 'Dummy Data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dummy Data'),
        ),
        body: Container(
          child: Center(
            child: Text('Dummy Data'),
          ),
        ),
      ),
    ));
  }
}