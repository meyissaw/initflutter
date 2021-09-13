
import 'package:flutter/material.dart';
import 'package:hands/drawer.dart';
import 'package:hands/name_card_widget.dart';


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
            child: NameCardWidget(myText: myText, nameTextController: _nameTextController),
          ),
        ),

      ),
      drawer:MyDrawer(),

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
