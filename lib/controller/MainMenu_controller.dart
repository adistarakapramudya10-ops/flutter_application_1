import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu/home_page.dart';
import 'package:flutter_application_1/menu/history_page.dart';
import 'package:flutter_application_1/menu/profile_page.dart';


class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changesPage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

}