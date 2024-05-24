import 'package:get/get.dart';

import '../../../data/models/transaction_model.dart';

class TransactionController extends GetxController {
  var pendapatan = 0.obs;
  var pengeluaran = 0.obs;
  var daftarTransaksi = List<Transaction>.empty().obs;

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

  void addTransaction(String tipe, String deskripsi, int harga) {
    var transaction = Transaction(
      tipe: tipe,
      deskripsi: deskripsi,
      harga: harga,
      tanggal: DateTime.now().toString(),
    );
    daftarTransaksi.add(transaction);
  }
}
