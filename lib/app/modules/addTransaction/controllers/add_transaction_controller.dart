import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddTransactionController extends GetxController {
  late TextEditingController deskripsiController;
  late TextEditingController hargaController;
  var kategori = "Makanan".obs;

  @override
  void onInit() {
    super.onInit();
    deskripsiController = TextEditingController();
    hargaController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
