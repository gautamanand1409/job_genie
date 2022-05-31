import 'package:flutter/material.dart';
import 'package:job_genie/navigation_drawer.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Job Genie'),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius:
              const BorderRadius.vertical(bottom: const Radius.circular(16)),
        ),
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            color: Color.fromARGB(255, 200, 227, 249),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.wifi,
                    size: 50,
                    color: Colors.black,
                  ), //itha image use kar konte pan tujhya hishobane
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 73),
                  child: Text('Wi-Fi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.devices,
                    size: 50,
                    color: Colors.white,
                  ), //itha image use kar konte pan tujhya hishobane
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 70),
                  child: Text('Connected Devices',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.white,
                  ), //itha image use kar konte pan tujhya hishobane
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.white,
                  ), //itha image use kar konte pan tujhya hishobane
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.white,
                  ), //itha image use kar konte pan tujhya hishobane
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.orange,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160, left: 100),
                  child: Text('Clock',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
