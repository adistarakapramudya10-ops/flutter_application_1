import 'package:flutter_application_1/pages/confirm_reg_page.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/listmakanan_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/pages/MainMenu_page.dart';
import 'package:flutter_application_1/pages/login_clone_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  // Ubah penamaan menjadi camelCase untuk menghilangkan peringatan biru
  static const String confirmRegistration = '/confirm_registration';
  static const String listMakanan = '/list_makanan';
  static const String detailMakanan = '/detail_makanan';
  static const String mainMenu = '/main_menu';
  static const String loginpage = '/loginpage';

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegPage()),
    GetPage(name: listMakanan, page: () => ListMakananPage()),
    // 2. Hapus kata 'const' sebelum pemanggilan page
    GetPage(name: detailMakanan, page: () => DetailsPage()), 
    GetPage(name: mainMenu, page: () => MainMenuPage()), 
    GetPage(name: loginpage, page: () => LoginClonePage()),
  ];
}
