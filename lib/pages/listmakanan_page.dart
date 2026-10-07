import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/listmakanan_controller.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 192, 194), // Tambah warna background halaman
      appBar: AppBar(
        title: const Text("List Makanan"),
        backgroundColor: const Color.fromARGB(255, 226, 10, 10), // Tambah warna AppBar
        foregroundColor: Colors.white, // Tambah warna teks AppBar
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.details_page,
                  arguments: {
                    'namaMakanan': makanan.namaMakanan,
                    'hargaMakanan': makanan.hargaMakanan,
                    'gambarMakanan': makanan.gambarMakanan,
                    'deskripsiMakanan': makanan.deskripsiMakanan,
                    'ratingMakanan': makanan.ratingMakanan,
                    'reviewMakanan': makanan.reviewMakanan,
                  },
                );
              },
              child: Card(
                color: Colors.orange.shade50,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        makanan.namaMakanan,
                        style: const TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Rp. ${makanan.hargaMakanan}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 228, 12, 12), // Tambah warna teks harga
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}