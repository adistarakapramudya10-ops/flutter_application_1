import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/menu_drawer_controller.dart';
import 'package:flutter_application_1/controller/main_menu_controller.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  final MenuDrawerController _drawerController = MenuDrawerController();

  MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 7, 9, 10), 
      child: ListenableBuilder(
        listenable: _drawerController,
        builder: (context, child) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Color(0xFF1F2C34)),
                accountName: Text(
                  _drawerController.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(_drawerController.userEmail),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 40, color: Color.fromARGB(255, 241, 238, 238)),
                ),
              ),
              _buildDrawerItem(
                icon: Icons.home_outlined,
                title: 'Home',
                onTap: () => _selectTab(context, 0),
              ),
              _buildDrawerItem(
                icon: Icons.history_outlined,
                title: 'History',
                onTap: () => _selectTab(context, 1),
              ),
              _buildDrawerItem(
                icon: Icons.person_outline,
                title: 'Profile',
                onTap: () => _selectTab(context, 2),
              ),
              _buildDrawerItem(
                icon: Icons.restaurant_menu,
                title: 'Daftar Makanan',
                onTap: () {
                  Navigator.pop(context);
                  Get.toNamed(Routes.listMakanan);
                },
              ),
              const Divider(color: Colors.white24),
            ],
          );
        },
      ),
    );
  }

  void _selectTab(BuildContext context, int index) {
    Navigator.pop(context);
    Get.find<MainMenuController>().changesPage(index);
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color iconColor = Colors.white70,
    Color textColor = Colors.white,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title, style: TextStyle(color: textColor, fontSize: 16)),
      onTap: onTap,
    );
  }
}
