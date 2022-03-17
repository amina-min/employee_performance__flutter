import 'package:emp_performance_tracker_flut/views/pages/dashbord.dart';
import 'package:emp_performance_tracker_flut/views/pages/enddrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({Key? key}) : super(key: key);

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LocationDrawer(),
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(23.77464, 90.36527),
          zoom: 19,
        ),
      ),
    );
  }
}

class LocationDrawer extends StatelessWidget {
  const LocationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Employee list",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Back', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Dashboard()));

              },
            ),
          ],
        ),
      ),
    );
  }
}
