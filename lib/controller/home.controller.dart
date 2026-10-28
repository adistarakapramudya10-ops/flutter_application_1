import 'package:flutter_application_1/models/makanan_model.dart';

class HomeController {
  final List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "Rp 10.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfu1C8popa1SkRST0Dac12eHROQcRvFjdUMk1-oHRnB7yBNF9U8Q&s=10",
      deskripsiMakanan: "Soto ayam kuah bening gurih dengan suwiran ayam segar.",
      ratingMakanan: 5,
      reviewMakanan: "Sangat lezat dan kuahnya hangat!",
    ),
    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "Rp 25.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Lt3YlNoDigYtJnV4cppXzx2_RH9aPjl4CpRnjrP0HUKcou6Q7SSUOfco&s=10",
      deskripsiMakanan: "Makanan khas dengan tahu, tempe, dan lodeh kental.",
      ratingMakanan: 4,
      reviewMakanan: "Mantap untuk sarapan.",
    ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "Rp 25.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScWJMUwwqF5o7FTJopR8Pch2KNRHL27cDtQH7MABN8OzlHlltVbjDkShU&s=10",
      deskripsiMakanan: "Nasi pindang daging kerbau dengan daun melinjo khas.",
      ratingMakanan: 5,
      reviewMakanan: "Dagingnya empuk banget!",
    ),
    MakananModel(
      namaMakanan: "Jenang",
      hargaMakanan: "Rp 18.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIW34lla77fm1B3hlfhCmrHwNqusJ0uHJZQ6lA&s=10",
      deskripsiMakanan: "Jenang legit manis cocok untuk oleh-oleh.",
      ratingMakanan: 4,
      reviewMakanan: "Manisnya pas di lidah.",
    ),
    MakananModel(
      namaMakanan: "Bolang - Baling",
      hargaMakanan: "Rp 6.000",
      gambarMakanan: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2018/04/Resep-Odading.jpg?fit=1401%2C1144&ssl=1",
      deskripsiMakanan: "Roti goreng empuk bertabur wijen manis.",
      ratingMakanan: 5,
      reviewMakanan: "Enak buat ngemil sore.",
    ),
  ];
}