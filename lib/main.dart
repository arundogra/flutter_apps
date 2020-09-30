import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Perfect StateFull Widget Example',
    home: City(),
  ));
}

class City extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return(_CityState());
  }
}

class _CityState extends State <City> {
  String cityName = '';
  var _stateNames = ['Punjab', 'Haryana', 'Himachal', 'UP', 'Kashnmir', 'Shimla'];
  var currentStateSelected = 'Punjab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Favourite City'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.1),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  cityName = userInput;
                });
              },
            ),
            DropdownButton<String> (
              items: _stateNames.map((String dropDownStrinItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStrinItem,
                  child: Text(dropDownStrinItem),
                );
              }).toList(),
              onChanged: (String newStateSelected) {
                setState(() {
                  this.currentStateSelected = newStateSelected;
                });
              },
              value: currentStateSelected,
            ),
            Padding(
              padding: EdgeInsets.all(20.1),
              child: Text(
                "Your Favourite City is $cityName",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}