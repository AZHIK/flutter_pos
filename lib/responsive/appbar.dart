// appbar.dart
import 'package:flutter/material.dart';
import 'package:pharmpos/responsive.dart'; // Import the responsive.dart file
import 'package:pharmpos/colors.dart';
class MyAppbar extends StatelessWidget implements PreferredSize {

  const MyAppbar({super.key});
  final double height = 50;

  
  @override
  Widget build(BuildContext context) {
    return Container(
  width: double.infinity, // Or a specific width
  height: height, // Already defined in preferredSize
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: MyAppColor.borderColor,
      width: 1.0,
      style: BorderStyle.solid,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Color of the shadow
        spreadRadius: 5,                         // How far the shadow spreads
        blurRadius: 7,                           // The blur intensity of the shadow
        offset: Offset(0, 3),                    // Offset in x and y directions
      ),
      
    ],
  ),
  child: AppBar(

    ///mobile menu
      // leading:IconButton(
      // onPressed: (){},
      // icon: Icon(Icons.menu)),
    
    //search field
    
    
    ///actions
    actions: [
      if(!ResponsiveLayout.isDesktop(context)) IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
      IconButton(onPressed: (){}, icon: Icon(Icons.person))
    ],
    
  ),
  
);
  }
  
 
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}