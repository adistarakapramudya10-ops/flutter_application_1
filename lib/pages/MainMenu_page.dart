import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu/history_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/MainMenu_controller.dart';
import 'package:flutter_application_1/menu/home_page.dart'; 


class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final mainmenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
      body: IndexedStack(
        index: mainmenuController.selectedIndex.value, 
        children: mainmenuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainmenuController.changesPage,
          currentIndex: mainmenuController.selectedIndex.value,
          items:[
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
                )
          ],
        )
    ));
  }
}