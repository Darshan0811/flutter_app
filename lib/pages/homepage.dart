import 'package:flutter/material.dart';
import 'package:flutter_app/changenamecard.dart';
import 'package:flutter_app/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //scaffold ek widget che jema appbar,body ne etc widgets che.
        backgroundColor: Colors.grey[200], //scaffold etle aakhi app ni screen.
        appBar: AppBar(
          title: Text(
              "awesome app"), //wrap with center na kartay drawer aavse to title saav side ma vayu jase.
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                changenamecard(myText: myText, nameController: _nameController),
          ),
        ),
        //button homepage nu part che body nu nai etle bare lakhyu container ma nai.
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: Icon(Icons.edit), //button ni andar icon create karva mate.
          backgroundColor: Colors.cyan, //button no color aapva
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        drawer: myDrawer());
  }
}
