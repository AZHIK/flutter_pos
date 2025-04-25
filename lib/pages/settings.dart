import 'package:flutter/material.dart';
import 'package:pharmpos/responsive/appbar.dart';
import 'package:pharmpos/responsive/sidebar.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Container(
        color: const Color.fromARGB(255, 64, 77, 192),
      ),
    );
  }
}