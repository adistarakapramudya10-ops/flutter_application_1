import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/kalkulator_controller.dart';
import 'package:flutter_application_1/components/Custom_textField.dart';

class KalkulatorPage1 extends StatelessWidget {
 KalkulatorPage1({super.key});
  
  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
  TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar : AppBar(title: Text("Kalkulator Page")),
      body : Column(
       children: [
        CustomTextField(txtController: txtAngka1, hintText: "input angka 1", keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly],),
        CustomTextField(txtController: txtAngka2, hintText: "input angka 2", keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly],),
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(
          onPressed: () {
            int angka1 = int.parse(txtAngka1.text);
            int angka2 = int.parse(txtAngka2.text);
            controller.tambah(angka1, angka2);
          },
          child: Text("+"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 170, 46, 9),
        ),
        ),
        ElevatedButton(
          onPressed: () {
            int angka1 = int.parse(txtAngka1.text);
            int angka2 = int.parse(txtAngka2.text);
            controller.kurang(angka1, angka2);
          },
          child: Text("-"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 83, 219, 201),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            int angka1 = int.parse(txtAngka1.text);
            int angka2 = int.parse(txtAngka2.text);
            controller.kali(angka1, angka2);
          },
          child: Text("*"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 84, 104, 216),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            int angka1 = int.parse(txtAngka1.text);
            int angka2 = int.parse(txtAngka2.text);
            controller.bagi(angka1, angka2);
          },
          child: Text("/"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 194, 228, 133),
          ),
        ),
        
        ],),
        ElevatedButton(
          onPressed: () {
            controller.reset();
            txtAngka1.clear();
            txtAngka2.clear();
          },
          child: Text("Clear"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 228, 133, 133),
          ),
        ),

        Obx(
          () => Text(
            controller.hasil.toString(),
             style: TextStyle(fontSize: 30),
            ),
            ),
        
       ],
      )
      );
  }
}