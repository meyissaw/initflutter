import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Lily  Gebregeorgis"),
              accountEmail: Text("lily@gmail.com"),
              currentAccountPicture:
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1516729557409-298ab938f00c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"
                ),
              )

          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Robel Belete"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),

          ),
          ListTile(
              leading: Icon(Icons.email),
              title: Text("Lil Belete"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit)
          ),
        ],
      ),
    );
  }
}
