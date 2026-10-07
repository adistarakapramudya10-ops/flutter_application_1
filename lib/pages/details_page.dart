import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments ?? {};
    final String namaMakanan = args['namaMakanan'] ?? 'Detail Makanan';
    final String hargaMakanan = args['hargaMakanan']?.toString() ?? '0';
    final String gambarMakanan = args['gambarMakanan'] ?? '';
    final String deskripsiMakanan = args['deskripsiMakanan'] ?? '-';
    final dynamic ratingMakanan = args['ratingMakanan'] ?? 5;
    final String reviewMakanan = args['reviewMakanan'] ?? '-';

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 190, 220, 223), 
      appBar: AppBar(
        title: Text(namaMakanan),
        backgroundColor: const Color.fromARGB(255, 202, 19, 34),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: gambarMakanan.isNotEmpty
                    ? Image.network(
                        gambarMakanan,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Container(
                          height: 200,
                          color: const Color.fromARGB(255, 126, 224, 88),
                          child: const Icon(Icons.fastfood, size: 60, color: Colors.orange),
                        ),
                      )
                    : Container(
                        height: 200,
                        color: Colors.orange.shade100,
                        child: const Icon(Icons.fastfood, size: 60, color: Colors.orange),
                      ),
              ),
              const SizedBox(height: 16),

              Text(
                namaMakanan,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),

              Text(
                "Rp. $hargaMakanan",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  ...List.generate(5, (index) {
                    double ratingValue = double.tryParse(ratingMakanan.toString()) ?? 5.0;
                    return Icon(
                      index < ratingValue ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 20,
                    );
                  }),
                  const SizedBox(width: 6),
                  Text(
                    "($ratingMakanan / 5)",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              const Divider(height: 30),

              const Text(
                "Deskripsi (Info Makanan):",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                deskripsiMakanan,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),

              const SizedBox(height: 20),

              const Text(
                "Review:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: Text(
                  "\"$reviewMakanan\"",
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}