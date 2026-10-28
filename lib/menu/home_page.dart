import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home.controller.dart';
import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:flutter_application_1/pages/menu_drawer_page.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = HomeController();
    final List<MakananModel> makananList = homeController.listMakanan;

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Makanan'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: MenuDrawerPage(),
      backgroundColor: Colors.blueGrey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Main Menu',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: makananList.length,
                itemBuilder: (context, index) {
                  final makanan = makananList[index];

                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => Get.toNamed(
                      Routes.detailMakanan,
                      arguments: {
                        'namaMakanan': makanan.namaMakanan,
                        'hargaMakanan': makanan.hargaMakanan,
                        'gambarMakanan': makanan.gambarMakanan,
                        'deskripsiMakanan': makanan.deskripsiMakanan,
                        'ratingMakanan': makanan.ratingMakanan,
                        'reviewMakanan': makanan.reviewMakanan,
                      },
                    ),
                    child: Container(
                      width: 180,
                      margin: const EdgeInsets.only(
                        left: 16.0,
                        right: 8.0,
                        bottom: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.network(
                              makanan.gambarMakanan,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.broken_image, size: 120),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  makanan.namaMakanan,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  makanan.hargaMakanan,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }, // Penutup itemBuilder
              ), // Penutup ListView.builder
            ), // Penutup SizedBox
          ],
        ),
      ),
    );
  }
}
