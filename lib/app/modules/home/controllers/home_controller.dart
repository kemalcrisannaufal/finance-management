import 'package:get/get.dart';

class HomeController extends GetxController {
  var pendapatan = 0.obs;
  var pengeluaran = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void resetData() {
    pendapatan.value = 0;
    pengeluaran.value = 0;
  }
}
