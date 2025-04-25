import 'package:flutter/material.dart';
import 'package:pharmpos/responsive.dart';
import 'package:pharmpos/responsive/desktop.dart';
import 'package:pharmpos/responsive/tablet.dart';
import 'package:pharmpos/responsive/mobile.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future main() async{
  runApp(const PharmPOS());
  }
class PharmPOS extends StatelessWidget {
  const PharmPOS({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pharmpos',
      debugShowCheckedModeBanner: false,
      home:ResponsiveLayout(
        desktopBody: DesktopScaffold(), 
        tabletBody: TabletScaffold(), 
        mobileBody: MobileScaffold(),
      )
    );
  }
}