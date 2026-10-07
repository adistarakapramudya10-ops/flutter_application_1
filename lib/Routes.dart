import 'package:flutter_application_1/pages/confirm_reg_page.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/listmakanan_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirm_registration = '/confirm_registration';
  static const String list_makanan = '/list_makanan';
  static const String details_page = '/details_page';

  static final MyPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: details_page, page: () => const DetailsPage()),
  ];
}