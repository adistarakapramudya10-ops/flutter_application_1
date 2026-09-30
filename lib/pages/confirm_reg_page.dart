import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/confirm_reg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.nama}",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            SizedBox(height: 10),
            Text(
              "Alamat: ${controller.alamat}",
              style: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 92, 219, 19)),
            ),
            SizedBox(height: 10),
            Text(
              "Email: ${controller.email}",
              style: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 99, 82, 8)),
            ),
            SizedBox(height: 10),
            Text(
              "Jenis Kelamin: ${controller.jenisKelamin}",
              style: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 29, 170, 139)),
            ),
            SizedBox(height: 10),
            Text(
              "Kelas: ${controller.kelas}",
              style: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 14, 61, 116)),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}