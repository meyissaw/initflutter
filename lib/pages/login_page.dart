import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


class LoginPage extends StatefulWidget {
  static const String routeName="/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Image.asset("assets/LIL.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _userNameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration:  InputDecoration(
                                hintText: 'enter email ',
                                labelText: 'user name:'
                            )
                            ,
                          ),
                          TextFormField(
                            controller: _passWordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration:  InputDecoration(
                                hintText: 'enter password ',
                                labelText: 'password:'
                            )
                            ,
                          ),
                          ElevatedButton(
                            onPressed:() {
                           /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => HomePage()));
*/
                              Navigator.pushNamed(context, HomePage.routeName);
                          },
                            child: const Text("Sign in"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                textStyle:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      )

    );
  }
}
