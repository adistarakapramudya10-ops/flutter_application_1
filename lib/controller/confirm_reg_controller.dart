import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String jenisKelamin;
  late String kelas;

  @override
  void onInit() {

    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    jenisKelamin = arguments['jenis_kelamin'];
    kelas = arguments['kelas'];
  }
}