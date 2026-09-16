import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  String hasil = "hasil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Page")),
      body: Column(
        children: [
          Text("KALKULATOR"),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: angka1,
              decoration: InputDecoration(hintText: "Masukkan Angka 1"),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: angka2,
              decoration: InputDecoration(hintText: "Masukkan Angka 2"),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double a = double.parse(angka1.text);
                    double b = double.parse(angka2.text);
                    hasil = (a + b).toString();
                  });
                },
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double a = double.parse(angka1.text);
                    double b = double.parse(angka2.text);
                    hasil = (a - b).toString();
                  });
                },
                child: Text("-"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double a = double.parse(angka1.text);
                    double b = double.parse(angka2.text);
                    hasil = (a * b).toString();
                  });
                },
                child: Text("x"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double a = double.parse(angka1.text);
                    double b = double.parse(angka2.text);
                    hasil = (a / b).toString();
                  });
                },
                child: Text("/"),
              ),
            ],
          ),

          Text(hasil),

          ElevatedButton(
            onPressed: () {
              setState(() {
                angka1.clear();
                angka2.clear();
                hasil = "hasil";
              });
            },
            child: Text("Button Clear"),
          ),
        ],
      ),
    );
  }
}