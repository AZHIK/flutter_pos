import 'package:flutter/material.dart';
import 'package:pharmpos/pages/accounts.dart';
import 'package:pharmpos/pages/home.dart';
import 'package:pharmpos/pages/orders.dart';
import 'package:pharmpos/pages/pos.dart';
import 'package:pharmpos/pages/settings.dart';
import 'package:pharmpos/colors.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedIndex = 0;

  void _navigateTo(Widget screen, int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Material(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: InkWell(
              onTap: () {
                // Profile click action
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 213, 214, 214),width: 1,style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  
                  children: [
                    const CircleAvatar(
                      radius: 52,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNtaWx5JTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Sophia',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                    const Text(
                      'email234@sophia.com',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),

          _buildDrawerItem(
            icon: Icons.home_outlined,
            title: "Home",
            index: 0,
            destination: const HomeScreen(),
          ),
          const SizedBox(height: 10),
          _buildDrawerItem(
            icon: Icons.favorite_border,
            title: "Orders",
            index: 1,
            destination: const OrdersScreen(),
          ),
          const SizedBox(height: 10),
          _buildDrawerItem(
            icon: Icons.notifications_outlined,
            title: "Notifications",
            index: 2,
            destination: const SettingsScreen(),
          ),
          const SizedBox(height: 10),
          _buildDrawerItem(
            icon: Icons.chat,
            title: "POS",
            index: 3,
            destination: const PosScreen(),
          ),

          const SizedBox(height: 10),

          _buildDrawerItem(
            icon: Icons.account_tree_outlined,
            title: "Expenses",
            index: 4,
            destination: const AccountsScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required int index,
    required Widget destination,
  }) {
    final isSelected = _selectedIndex == index;
    return Container(
  decoration: BoxDecoration(
    color: isSelected ? MyAppColor.primaryBg : Colors.white,
    borderRadius: BorderRadius.circular(6),
    border: Border.all(
      color: isSelected ? Colors.white : const Color.fromARGB(255, 226, 226, 226), // Customize as needed
      width: 1.0,
    ),
  ),
  child: ListTile(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    leading: Icon(
      icon,
      color: isSelected ? Colors.white : null,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.white : null,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    ),
    onTap: () {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    _navigateTo(destination, index);
  });
},
  ),
);
  }
}
