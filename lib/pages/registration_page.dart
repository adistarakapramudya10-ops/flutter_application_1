import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/controller/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final regController = Get.put(RegistrationController());

    final TextEditingController txtNama = TextEditingController();
    final TextEditingController txtAlamat = TextEditingController();
    final TextEditingController txtEmail = TextEditingController();
    final TextEditingController txtKelas = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(txtController: txtNama, hintText: "input name"),
            const SizedBox(height: 12),
            CustomTextField(txtController: txtAlamat, hintText: "input alamat"),
            const SizedBox(height: 12),
            CustomTextField(txtController: txtEmail, hintText: "input email"),
            const SizedBox(height: 12),

            Obx(
              () => DropdownMenu<String>(
                expandedInsets: EdgeInsets.zero,
                initialSelection: regController.selectedJenisKelamin.value,
                label: const Text('Jenis Kelamin'),
                dropdownMenuEntries: regController.menuEntries,
                onSelected: (String? value) {
                  regController.setJenisKelamin(value);
                },
              ),
            ),
            const SizedBox(height: 12),

            CustomTextField(txtController: txtKelas, hintText: "input Kelas"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text,
                    'alamat': txtAlamat.text,
                    'email': txtEmail.text,
                    'jenis_kelamin': regController.selectedJenisKelamin.value,
                    'kelas': txtKelas.text,
                  },
                );
              },
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}