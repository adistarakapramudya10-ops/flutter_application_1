import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/detail_makanan_controller.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 247, 248),
      appBar: AppBar(
        title: Text(controller.namaMakanan),
        backgroundColor: const Color.fromARGB(255, 226, 10, 10),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Image.network(
                controller.gambarMakanan,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.red),
                  );
                },
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(Icons.broken_image, size: 64, color: Colors.grey),
                ),
              ),
            ),
            

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.namaMakanan,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 40, 40, 40),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    "Rp. ${controller.hargaMakanan}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 228, 12, 12),
                    ),
                  ),
                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 20),
                            const SizedBox(width: 6),
                            Text(
                              "${controller.ratingMakanan} / 5",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Divider(thickness: 1.5),
                  ),

                  const Text(
                    "Deskripsi Makanan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  
                  Text(
                    controller.deskripsiMakanan,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    "Ulasan Pembeli",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.orange.shade200),
                    ),
                    child: Text(
                      "\"${controller.reviewMakanan}\"",
                      style: const TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}