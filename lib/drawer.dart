import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("abc@gmail.com"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
