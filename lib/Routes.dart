import 'package:flutter_application_1/pages/confirm_reg_page.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/listmakanan_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirm_registration = '/confirm_registration';
  static const String list_makanan = '/list_makanan';
  static const String detail_makanan = '/detail_makanan';

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => const DetailsPage()),
  ];
}