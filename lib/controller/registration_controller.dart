import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  var selectedJenisKelamin = 'Laki-laki'.obs;

  final List<String> listJenisKelamin = ['Laki-laki', 'Perempuan'];

  List<DropdownMenuEntry<String>> get menuEntries {
    return listJenisKelamin.map<DropdownMenuEntry<String>>((String value) {
      return DropdownMenuEntry<String>(
        value: value,
        label: value,
      );
    }).toList();
  }

  void setJenisKelamin(String? value) {
    if (value != null) {
      selectedJenisKelamin.value = value;
    }
  }
}