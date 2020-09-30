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
        body: Center(
          child: Column(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Text(
                "Button Stateless Example ",
                style: TextStyle(color: Colors.black),
              ),
              RaisedButton(
                child: Text('Click ME'),
                onPressed: ClickMe,
              )
            ],
          ),
        ),
      ),
    ));
  }

  void ClickMe() {
    print('WORKING');
  }
}