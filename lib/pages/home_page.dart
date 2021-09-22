
import 'package:flutter/material.dart';
import 'package:hands/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 /* var myText="Change my Name";
  TextEditingController _nameTextController = TextEditingController();
*/
  var url ="https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async
  {
 var response=  await    http.get(Uri.parse(url));
 data=jsonDecode(response.body);
  setState(() {

  });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Awesome App'),
      ),
      body: data!= null
          ? ListView.builder(
            itemBuilder: (context,index){
            return  ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID: ${data[index]["id"]}"),
              leading: Image.network(data[index]["url"]),
            );
         },
        itemCount: data.length,
      )
          :Center(child: CircularProgressIndicator(),
      ),
      drawer:MyDrawer(),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText= _nameTextController.text;
          setState(() {
          });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
