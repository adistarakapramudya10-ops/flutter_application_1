import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 

class CustomTextField extends StatelessWidget {
  final TextEditingController? txtController;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters; 

  const CustomTextField({
    super.key,
    this.txtController,
    required this.hintText,
    this.keyboardType, 
    this.obscureText = false,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextField(
        controller: txtController,
        obscureText: obscureText,
        keyboardType: keyboardType, 
        inputFormatters: inputFormatters, 
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
