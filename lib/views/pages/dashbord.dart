import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Employee details ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
               // color: Colors.blueGrey,
                elevation: 5.0,
                shadowColor: Colors.blue,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(title: Text('Total Employee')),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
            )
          ],
        ));
  }
}
