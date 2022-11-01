import 'package:flutter/material.dart';

import 'mainscreenimage.dart';

class changenamecard extends StatelessWidget {
  const changenamecard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          mainscreenimage(),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                myText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "enter name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
