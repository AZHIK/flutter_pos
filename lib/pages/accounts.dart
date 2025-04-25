import 'package:flutter/material.dart';
import 'package:pharmpos/responsive/appbar.dart';
import 'package:pharmpos/responsive/sidebar.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppbar(),
      body: Container(
        color: const Color.fromARGB(255, 110, 7, 158),
      ),
    );
  }
}