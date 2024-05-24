import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:online_leaning/app/modules/home/controllers/transaction_controller.dart';
import 'package:online_leaning/app/modules/home/views/information_card_view.dart';
import 'package:online_leaning/app/modules/home/views/menu_view.dart';
import 'package:online_leaning/app/modules/home/views/reset_data_view.dart';
import 'package:online_leaning/app/modules/home/views/transaction_list_view.dart';
import 'package:online_leaning/app/routes/app_pages.dart';
import 'package:online_leaning/app/shared/widgets/appbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var transactionC = Get.put(TransactionController());
    return Scaffold(
      appBar: CustomAppBar(
          userName: "Kemal Crisannaufal", onNotificationPressed: () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Obx(
              () => InformationCardView(
                pendapatan: controller.pendapatan.value,
                pengeluaran: controller.pengeluaran.value,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              height: 70,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                MenuView(
                  name: "Pendapatan",
                  iconData: Icons.arrow_upward,
                  onTap: () => Get.toNamed(Routes.ADD_PENDAPATAN),
                ),
                MenuView(
                  name: "Pengeluaran",
                  iconData: Icons.arrow_downward,
                  onTap: () => Get.toNamed(Routes.ADD_TRANSACTION),
                ),
                MenuView(
                  name: "Limit",
                  iconData: Icons.monetization_on,
                  onTap: () {},
                ),
                SizedBox(height: 10),
              ]),
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            Text(
              "Transaksi Terbaru",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Obx(() => Container(
                  height: (transactionC.daftarTransaksi.length == 0)
                      ? 50
                      : transactionC.daftarTransaksi.length * 90,
                  child: (transactionC.daftarTransaksi.length != 0)
                      ? ListView.builder(
                          itemCount: transactionC.daftarTransaksi.length,
                          itemBuilder: (context, index) {
                            return TransactionListView(
                              kategori:
                                  transactionC.daftarTransaksi[index].tipe!,
                              harga: transactionC.daftarTransaksi[index].harga!
                                  .toString(),
                              deskripsi: transactionC
                                  .daftarTransaksi[index].deskripsi!,
                            );
                          })
                      : Container(
                          color: Colors.blueAccent,
                          child: Center(
                              child: Text(
                            'Tidak Ada Transaksi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                )),
            SizedBox(height: 20),
            ResetDataView(
              onTap: () {
                controller.resetData();
                Get.find<TransactionController>().daftarTransaksi.clear();
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
