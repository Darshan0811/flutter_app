import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter app", //app minimize karine j title dekhaay e.
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
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //main axis aaya row che etle aadi(x axis thase).
            //Cross axis etle opposite axis aaya vertical etle y-axis thase.
            children: <Widget>[
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              )
            ],
          )),
    );
  }
}
