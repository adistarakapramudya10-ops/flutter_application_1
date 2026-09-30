import 'package:flutter_application_1/pages/confirm_reg_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = '/registration';
  static const String confirm_registration = '/confirm_registration';

  static final MyPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmRegPage()),
  ];

}