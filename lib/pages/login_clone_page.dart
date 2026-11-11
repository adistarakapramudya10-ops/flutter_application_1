import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/components/Custom_Button.dart';
import 'package:flutter_application_1/components/Custom_textField.dart';
import 'package:flutter_application_1/controller/login_controller.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),

            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png',
              height: 50,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.facebook,
                size: 60,
                color: Color(0xFF1877F2),
              ),
            ),

            const SizedBox(height: 24),

            CustomTextField(
              txtController: controller.txtUsername,
              hintText: "Masukkan Nomor ponsel atau email",
            ),

            CustomTextField(
              txtController: controller.txtPassword,
              hintText: "Masukkan Kata sandi",
              obscureText: true,
            ),

            Obx(
              () => PrimaryButton(
                text: "Login",
                onPressed: controller.isLoading.value ? null : controller.login,
              ),
            ),

            TextButton(
              onPressed: () {},
              child: const Text(
                "Lupa Kata Sandi?",
                style: TextStyle(color: Colors.black),
              ),
            ),

            const SizedBox(height: 60),

            SecondaryButton(
              text: "Buat akun baru",
              onPressed: () {},
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
