import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Custom_Button.dart';
import 'package:flutter_application_1/components/Custom_textField.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

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

            const CustomTextField(
              hintText: "Masukkan Nomor ponsel atau email",
            ),

            const CustomTextField(
              hintText: "Masukkan Kata sandi",
              obscureText: true,
            ),

            PrimaryButton(
              text: "Login",
              onPressed: () {},
            ),

            TextButton(
              onPressed: () {},
              child: const Text(
                "Lupa Kata Sandi? awok awok",
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