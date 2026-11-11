import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; 
import 'package:flutter_application_1/pages/MainMenu_page.dart';

class LoginController extends GetxController {

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {

      try {

        isLoading.value = true;

        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {

            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;

        if (response.statusCode == 200) {

          final data = jsonDecode(response.body);

          if (data['status'] == true) {
            String message = data['message'];
            Get.snackbar("berhasil", message);

            Get.offAll(() => MainMenuPage());
            
          } else {
            Get.snackbar("gagal", data['message']);
          }
        } else {

          Get.snackbar("error", "Terjadi kesalahan pada server");
        }
      } catch (e) {

        isLoading.value = false;
        Get.snackbar("gagal", e.toString());
        debugPrint("error: " + e.toString());
      }
    }
  }
}