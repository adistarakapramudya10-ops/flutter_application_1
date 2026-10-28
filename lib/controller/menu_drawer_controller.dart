import 'package:flutter/material.dart';

class MenuDrawerController extends ChangeNotifier {
  // Contoh state untuk data pengguna di header drawer
  String _userName = "Adista Raka Pramudya";
  String _userEmail = "adistarakapramudya10@gmail.com";

  String get userName => _userName;
  String get userEmail => _userEmail;

  // Fungsi contoh jika ingin mengubah nama pengguna
  void updateUserData(String name, String email) {
    _userName = name;
    _userEmail = email;
    notifyListeners();
  }

  // Fungsi untuk navigasi (bisa disesuaikan dengan routing kamu)
  void navigateTo(BuildContext context, String routeName) {
    Navigator.pop(context); // Tutup drawer terlebih dahulu
    Navigator.pushNamed(context, routeName);
  }
}