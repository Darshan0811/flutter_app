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
      body: Center(
        child: Container(
          //color: Colors.red,
          height: 100,
          width: 100,
          child: Text("Hello there", style: TextStyle(color: Colors.purple)),
          padding: const EdgeInsets.all(
              4), //const etle value pachi kyay badlaavi na joye.
          //Child ni andar na child mate padding margin ni jem kaam kare.Margin aaya nai kaam kare etle.
          alignment: Alignment.center,
          //Upar color j comment karyo a simply aakhu box ne red kari nakhe.Pan gradient aapvo hoy to box decoration use thase.Decoration etle sajaavu etle koi pan vastu(aaya box) ne game te rite sajaavu hoy to decoration use thai.
          decoration: BoxDecoration(
              shape: BoxShape
                  .rectangle, //shape aapva mate.By default box square hoy etle rectangle karyu.
              //Shape,borderRadius,borderShadow savthi pela j kaam karse gradient pachi aapva jais to nai kare.
              borderRadius: BorderRadius.circular(10),
              //box ma shadow aapva mate.Syntax important che.
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                ),
              ],
              color: Colors.red,
              gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
        ),
      ),
    );
  }
}
