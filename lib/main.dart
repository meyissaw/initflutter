import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText="Change my Name";
  TextEditingController _nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Awesome App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children:  <Widget>[
                  Image.asset("assets/bg.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(myText,style:
                  TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameTextController,
                      decoration: InputDecoration(
                        hintText: 'Enter some text', labelText: "Name",
                      border: OutlineInputBorder()
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ),
        ),

      ),
      drawer: Drawer(
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
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText= _nameTextController.text;
          setState(() {
                      });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
