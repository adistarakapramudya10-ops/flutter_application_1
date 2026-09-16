import 'package:flutter/material.dart';
import 'components/Custom_textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to Application $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 4, 223),
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              controller: txtUsername,
              hintText: "input username",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              decoration: const InputDecoration(
                hintText: "Input password",
              ),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;
                    if (username == "admin" && password == "admin") {
                      debugPrint("sukses login");
                      statusLogin = "admin";
                    } else {
                      debugPrint("gagal login");
                      statusLogin = "failed";
                    }
                  });
                },
                child: const Text("Login"),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}