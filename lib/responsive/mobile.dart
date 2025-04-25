import 'package:flutter/material.dart';
import 'package:pharmpos/responsive/appbar.dart';
import 'package:pharmpos/responsive/sidebar.dart';




class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}