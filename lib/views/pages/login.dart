import 'dart:developer';

import 'package:emp_performance_tracker_flut/helper/http_helper.dart';
import 'package:emp_performance_tracker_flut/views/model/employee_payload.dart';
import 'package:emp_performance_tracker_flut/views/pages/dashbord.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  login() async {
    String email = _emailController.value.text;
    String password = _passwordController.value.text;

    var employee =  EmployeePayload(email: email, password: password);

    print(employee);

    signIn(employee).then((res) {
      print(res.body);

    });

    try {
      log(employee.toString());
      Fluttertoast.showToast(
          msg: "Login Sucsess",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));


    } catch (e) {
      log(e.toString());
      Fluttertoast.showToast(
          msg: "Login Faild",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }






  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 8),
            child: Text(
              "Login Here",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.mark_email_read,
                    size: 20.0,
                  ),
                  border: UnderlineInputBorder(),
                  labelText: "Enter your Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.password_outlined,
                    size: 20.0,
                  ),
                  border: UnderlineInputBorder(),
                  labelText: "Enter your Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  login();
                  print(_emailController.value.text);
                },
                child: Text("Login")),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute( builder: (context) => RegistrationPage()));
              },
              child: Text("registration here"))
        ],
      ),
    );
  }
}
