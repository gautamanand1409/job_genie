import 'package:flutter/material.dart';
import 'package:job_genie/navigation_drawer.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

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
    );
  }
}
