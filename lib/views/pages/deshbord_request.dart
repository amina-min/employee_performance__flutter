
import 'package:flutter/material.dart';


import 'login.dart';
import 'register.dart';

class ReguestPage extends StatefulWidget {
  const ReguestPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<ReguestPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0, bottom: 8),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Center(
              child: Row(
                children: [
                  Text('Does not have account? Please Login'
                    ,
                    style: TextStyle(fontSize:18,
                    color: Colors.red
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                          "here")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
