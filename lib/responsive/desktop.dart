import 'package:flutter/material.dart';
import 'package:pharmpos/responsive/appbar.dart';
import 'package:pharmpos/responsive/sidebar.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Container(
        color:  Colors.white,
      ),
    );
  }
}