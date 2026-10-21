import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10",
      deskripsiMakanan: "Soto ayam kuah bening gurih dengan suwiran ayam segar.",
      ratingMakanan: 5,
      reviewMakanan: "Sangat lezat dan kuahnya hangat!",
    ),
    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "25.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Lt3YLMoDlgYtJnY4cppXzx2_RH9aPji4CpRnjrP0hUKcou6Q7SSUOfco&s=10",
      deskripsiMakanan: "Makanan khas dengan tahu, tempe, dan lodeh kental.",
      ratingMakanan: 4,
      reviewMakanan: "Mantap untuk sarapan.",
    ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "25.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScwJMJwwqE5o7EIJopR8Pch2KNRHL27cDtQH7M0RN8OziHiltVbjDk5bU&s=10",
      deskripsiMakanan: "Nasi pindang daging kerbau dengan daun melinjo khas.",
      ratingMakanan: 5,
      reviewMakanan: "Dagingnya empuk banget!",
    ),
    MakananModel(
      namaMakanan: "Jenang",
      hargaMakanan: "18.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10",
      deskripsiMakanan: "Jenang legit manis cocok untuk oleh-oleh.",
      ratingMakanan: 4,
      reviewMakanan: "Manisnya pas di lidah.",
    ),
    MakananModel(
      namaMakanan: "Bolang - Baling",
      hargaMakanan: "6.000",
      gambarMakanan: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2018/04/Resep-Odading.jpg?fit=1481%2C1144&ssl=1",
      deskripsiMakanan: "Roti goreng empuk bertabur wijen manis.",
      ratingMakanan: 4,
      reviewMakanan: "Enak dimakan pas hangat.",
    ),
  ].obs;


}