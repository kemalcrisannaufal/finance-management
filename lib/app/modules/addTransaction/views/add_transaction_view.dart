import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_leaning/app/modules/home/controllers/home_controller.dart';
import 'package:online_leaning/app/modules/home/controllers/transaction_controller.dart';
import 'package:online_leaning/app/shared/widgets/appbar.dart';

import '../controllers/add_transaction_controller.dart';

class AddTransactionView extends GetView<AddTransactionController> {
  const AddTransactionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          userName: "Kemal Crisannaufal", onNotificationPressed: () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent[700],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "+    Tambah Transaksi",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => DropdownButton(
                  hint: Text("Pilih Kategori"),
                  isExpanded: true,
                  value: controller.kategori.value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Makanan"),
                      value: "Makanan",
                    ),
                    DropdownMenuItem(
                      child: Text("Transportasi"),
                      value: "Transportasi",
                    ),
                    DropdownMenuItem(
                      child: Text("Kuliah"),
                      value: "Kuliah",
                    ),
                    DropdownMenuItem(
                      child: Text("Tagihan"),
                      value: "Tagihan",
                    ),
                    DropdownMenuItem(
                      child: Text("Lain-lain"),
                      value: "Lain-lain",
                    ),
                  ],
                  onChanged: (value) {
                    controller.kategori.value = value!;
                  }),
            ),
            SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.deskripsiController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Deskripsi Transaksi',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.hargaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Harga Transaksi',
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.find<TransactionController>().addTransaction(
                    controller.kategori.value,
                    controller.deskripsiController.text,
                    int.parse(controller.hargaController.text));
                Get.find<HomeController>().pengeluaran.value +=
                    int.parse(controller.hargaController.text);
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Simpan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "Pendapatan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Pengeluaran",
          ),
        ],
      ),
    );
  }
}
