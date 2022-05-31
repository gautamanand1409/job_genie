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
                  childAspectRatio: 3 / 3,
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
                                  width: 135,
                                  height: 105,
                                  child: Image.network(
                                    cardData[index].imgurl,
                                    fit: BoxFit.fill,
                                  )),
                            )),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(cardData[index].title),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 233, 247),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                );
              }),
        ));
  }
}
