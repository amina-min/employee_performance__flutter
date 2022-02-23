import 'dart:convert';

import 'package:emp_performance_tracker_flut/helper/http_helper.dart';
import 'package:emp_performance_tracker_flut/views/model/total_info.dart';
import 'package:emp_performance_tracker_flut/views/pages/login.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late TotalInfo info;

  @override
  void initState() {
    getTotalInfo().then((res) {

      Map<String, dynamic> map = jsonDecode(res.body);

      setState(() {
        info = TotalInfo.fromMap(map['data']);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Scaffold(
        backgroundColor: const Color(0xffC4DFCB),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          title: Text("Employee Performance Tracker"),
        ),
        body: Center(
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Employee details ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  // color: Colors.blueGrey,
                  elevation: 15.0,
                  shadowColor: Colors.blue,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(title: Text('Total Employee')),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          info.totalEmployeeCount.toString(),
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      // ButtonBar(
                      //   alignment: MainAxisAlignment.start,
                      //   children: [
                      //     FlatButton(
                      //       textColor: const Color(0xFF6200EE),
                      //       onPressed: () {
                      //         // Perform some action
                      //       },
                      //       child: const Text('ACTION 1'),
                      //     ),
                      //     FlatButton(
                      //       textColor: const Color(0xFF6200EE),
                      //       onPressed: () {
                      //         // Perform some action
                      //       },
                      //       child: const Text('ACTION 2'),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  // color: Colors.blueGrey,
                  elevation: 15.0,
                  shadowColor: Colors.blue,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(title: Text('Total feedback submitted')),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          info.totalFeedbackCount.toString(),
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  // color: Colors.blueGrey,
                  elevation: 15.0,
                  shadowColor: Colors.blue,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(title: Text('Total no feedback count')),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          info.noFeedbackCount.toString(),
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
