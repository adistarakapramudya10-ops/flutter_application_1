import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/menu_drawer_controller.dart';
import 'package:flutter_application_1/routes.dart'; // Sesuaikan jika memanggil rute

class MenuDrawerPage extends StatelessWidget {
  final MenuDrawerController _drawerController = MenuDrawerController();

  MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF111B21), // Tema gelap
      child: ListenableBuilder(
        listenable: _drawerController,
        builder: (context, child) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFF1F2C34),
                ),
                accountName: Text(
                  _drawerController.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(_drawerController.userEmail),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
              ),
              _buildDrawerItem(
                icon: Icons.home_outlined,
                title: 'Home',
                onTap: () => _drawerController.navigateTo(context, Routes.main_menu),
              ),
              _buildDrawerItem(
                icon: Icons.history_outlined,
                title: 'History',
                onTap: () {
                  // Ganti dengan rute history yang sesuai jika ada
                  Navigator.pop(context); 
                },
              ),
              const Divider(color: Colors.white24),
              _buildDrawerItem(
                icon: Icons.settings_outlined,
                title: 'Pengaturan',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              _buildDrawerItem(
                icon: Icons.logout,
                title: 'Keluar',
                iconColor: Colors.redAccent,
                textColor: Colors.redAccent,
                onTap: () {
                  // Tambahkan logika logout di sini
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  // Reusable component khusus untuk item list di dalam Drawer
  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color iconColor = Colors.white70,
    Color textColor = Colors.white,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(
        title,
        style: TextStyle(color: textColor, fontSize: 16),
      ),
      onTap: onTap,
    );
  }
}