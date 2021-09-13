import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key? key,
    required this.myText,
    required TextEditingController nameTextController,
  }) : _nameTextController = nameTextController, super(key: key);

  final String myText;
  final TextEditingController _nameTextController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
