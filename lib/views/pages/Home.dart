import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   // backgroundColor: Colors.grey,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container (
              height: 180,
              width: double.infinity,
              //color: Colors.black12,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(right:12,left: 12),
             // transform: Matrix4.rotationZ(0.1),
              child:   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Image.asset("assets/images/offic.jpg")
                  ]
              ),
            ),
            Container (
              height: 270,
              width: double.infinity,
              //color: Colors.black12,
              alignment: Alignment.center,
              //margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(right:12,left: 12),
              //transform: Matrix4.rotationZ(0.1),
              child:   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Image.asset("assets/images/employee.jpg")
                  ]
              ),
            ),
            Container (
              height: 300,
              width: double.infinity,
              //color: Colors.black12,
              alignment: Alignment.center,
              //margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(right:12,left: 12),
              //transform: Matrix4.rotationZ(0.1),
              child:   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Image.asset("assets/images/o.jpg")
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
