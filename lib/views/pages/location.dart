
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GoogleMapPage.dart';



class EmployeesLocation extends StatefulWidget {
  const EmployeesLocation({Key? key}) : super(key: key);

  @override
  State<EmployeesLocation> createState() => _EmployeesLocationState();

}

class _EmployeesLocationState extends State<EmployeesLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GoogleMapPage()));
              },
              tooltip: "Google Map",
              child: Icon(Icons.pin_drop_outlined,),
            ),
            SizedBox(
              height:
              20,
            ),
            Text("Get Location" ,style:TextStyle(fontSize: 18),)
          ],
        ),
      )
    );
  }
}

