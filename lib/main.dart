import 'package:flutter/material.dart';

void main() {
  runApp(Materialap());
}

class Materialap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Title
        title: "Simple Material App",
        // Home
        home: Scaffold(
          // Appbar
          appBar: AppBar(
            // Title
            title: Text("Simple Material App"),
          ),
          // Body
          body: Container(
            // Center the content
            child: Center(
              // Add Text
              child: Logo(),
            ),
          ),
        ));
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/mask.png');
    Image image = Image(image: assetImage);
    return (image);
  }
}
