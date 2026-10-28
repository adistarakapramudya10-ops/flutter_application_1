import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/main_menu_controller.dart'; 

class MainMenuPage extends StatelessWidget {

  final MainMenuController _controller = Get.put(MainMenuController());

  MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          index: _controller.selectedIndex.value, 
          children: _controller.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _controller.changesPage,
          currentIndex: _controller.selectedIndex.value, 
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}