import 'package:flutter/material.dart';

class FacebookLoginApp extends StatefulWidget {

  const FacebookLoginApp({super.key});

  @override
  State<FacebookLoginApp> createState() => _FacebookLoginPageState();
}

class _FacebookLoginPageState extends State<FacebookLoginApp> {
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png',
              height: 50,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.facebook,
                size: 60,
                color: Color(0xFF1877F2),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Nomor ponsel atau email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: TextField(
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  hintText: "Masukkan Kata sandi",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: const Text(
                "Lupa Kata Sandi? awok awok",
                style: TextStyle(color: Colors.black),
              ),
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Buat akun baru"),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
