import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter app",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("awesome app"),
      ),
      body: Container(
        child: Center(child: Text("Hi Darshan")),
      ),
    );
  }
}
