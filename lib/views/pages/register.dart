import 'dart:developer';

import 'package:emp_performance_tracker_flut/views/model/employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationPage extends StatefulWidget {

  const RegistrationPage({Key? key}) : super(key: key);
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _designationController = TextEditingController();
  final _joiningdateController = TextEditingController();

  save() async{
    String name = _nameController.value.text  ;
    String username = _usernameController.value.text ;
    String email = _emailController.value.text ;
    String password = _passwordController.value.text;
    String designation = _designationController.value.text ;
    String joiningdate = _joiningdateController.value.text ;
    var model =EmployeeModel(name: name, username: username, email: email, password: password, designation: designation, joiningdate: joiningdate);

    try{


    }catch(e){
      log(e.toString());
      Fluttertoast.showToast(
          msg: "$e",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
        body:Form(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Name"
                      ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email"
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _designationController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Designation"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: TextFormField(
                  controller: _joiningdateController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Joiningdate"
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue, // background
                    onPrimary: Colors.white, // foreground
                  ),// foreground
                  onPressed: (){
                    save();
                  }, child: Text("submit"),
                ),
              ),
            ],

          ),
        )
    );
  }
}




