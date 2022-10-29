import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter app", //app minimize karine j title dekhaay e.
    home: HomePage(),
    //by default app ni theme blue hoy ene red kari.theme color change karva hot restart karvu pade hot reload nai.
    theme: ThemeData(
      primarySwatch: Colors.teal, //swatch etle felaay javu.
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "awesome app"), //wrap with center na kartay drawer aavse to title saav side ma vayu jase.
      ),
      body: Container(),
      //button homepage nu part che body nu nai etle bare lakhyu container ma nai.
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit), //button ni andar icon create karva mate.
        backgroundColor: Colors.cyan, //button no color aapva
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      drawer: Drawer(
        //drawer create karyu ema view kevu lisview etle k list jevu.list pan row ni jem j hase ema children aapyu ane drawer no header etle savthi upar na part ma hi there lakhyu.
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text(
            //     "hi there",
            //     style: TextStyle(color: Colors.blueGrey),
            //     textAlign: TextAlign.center,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.orange,
            //   ),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text("Darshan"),
              accountEmail: Text("abc@gmail.com"),
              // currentAccountPicture: Image.network(
              //     "https://www.bugatti.com/fileadmin/_processed_/sei/p54/se-image-bde5a930d9189654c884b25dc3e1935a.webp"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.bugatti.com/fileadmin/_processed_/sei/p54/se-image-bde5a930d9189654c884b25dc3e1935a.webp"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person), //leading etle aagadnu
              title: Text("personal"),
              subtitle: Text("Account"),
              trailing: Icon(Icons.edit), //trailing etle pachadnu
            )
          ],
        ),
      ),
    );
  }
}
