import 'package:flutter/material.dart';
import 'package:job_genie/data/CardData.dart';
import 'package:job_genie/model/CardModel.dart';
import 'package:job_genie/screens/navigation_drawer.dart';
import 'package:job_genie/screens/testpage.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<CardModel> cardData = [];

  @override
  void initState() {
    super.initState();
    cardData = CardInfo().getCardInformation();
  }

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
          shape: RoundedRectangleBorder(
            borderRadius:
                const BorderRadius.vertical(bottom: const Radius.circular(16)),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: cardData.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () async {
                    final url = Uri.parse(cardData[index].videourl);
                    await launchUrl(url,
                        mode: LaunchMode.inAppWebView,
                        webViewConfiguration:
                            const WebViewConfiguration(enableJavaScript: true));
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const TestPage()),
                    // );
                  },
                  // You can add the route to the next page using this onTap
                  child: Container(
                    alignment: Alignment.center,
                    // ignore: sort_child_properties_last
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                  width: 160,
                                  child: Image.network(
                                    cardData[index].imgurl,
                                    fit: BoxFit.fill,
                                  )),
                            )),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(cardData[index].title),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                );
              }),
        ));
  }
}



// GridView.count(
//         crossAxisCount: 2,
//         children: <Widget>[
//           Card(
//             color: Color.fromARGB(255, 200, 227, 249),
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.wifi,
//                     size: 50,
//                     color: Colors.black,
//                   ), //itha image use kar konte pan tujhya hishobane
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 160, left: 73),
//                   child: Text('Wi-Fi',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//           Card(
//             color: Colors.green,
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.devices,
//                     size: 50,
//                     color: Colors.white,
//                   ), //itha image use kar konte pan tujhya hishobane
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 140, left: 70),
//                   child: Text('Connected Devices',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//           Card(
//             color: Colors.orange,
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.access_alarm,
//                     size: 50,
//                     color: Colors.white,
//                   ), //itha image use kar konte pan tujhya hishobane
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 160, left: 100),
//                   child: Text('Clock',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//           Card(
//             color: Colors.orange,
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.access_alarm,
//                     size: 50,
//                     color: Colors.white,
//                   ), //itha image use kar konte pan tujhya hishobane
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 160, left: 100),
//                   child: Text('Clock',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//           Card(
//             color: Colors.orange,
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.access_alarm,
//                     size: 50,
//                     color: Colors.white,
//                   ), //itha image use kar konte pan tujhya hishobane
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 160, left: 100),
//                   child: Text('Clock',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//           Card(
//             color: Colors.orange,
//             child: Stack(
//               children: <Widget>[
//                 Center(
//                   child: Icon(
//                     Icons.access_alarm,
//                     size: 50,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 160, left: 100),
//                   child: Text('Clock',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold)),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),