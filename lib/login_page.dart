import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login api"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: const InputDecoration(labelText: "input username",
              ),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: const InputDecoration(labelText: "input password",
              ),
              obscureText: true, 
            ),
            Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : OutlinedButton( 
                      onPressed: () {
                        controller.login();
                      },
                      child: const Text("login"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}