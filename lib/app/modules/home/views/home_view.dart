import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:online_leaning/app/modules/home/views/information_card_view.dart';
import 'package:online_leaning/app/modules/home/views/menu_view.dart';
import 'package:online_leaning/app/modules/home/views/reset_data_view.dart';
import 'package:online_leaning/app/shared/widgets/appbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            userName: "Kemal Crisannaufal", onNotificationPressed: () {}),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              InformationCardView(),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                height: 70,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  MenuView(
                    name: "Pendapatan",
                    iconData: Icons.arrow_upward,
                    onTap: () {},
                  ),
                  MenuView(
                    name: "Pengeluaran",
                    iconData: Icons.arrow_downward,
                    onTap: () {},
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
              Container(
                height: 350,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.restaurant,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Makanan",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                        Text(
                                          "Rp. 100.000",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Beli Makan Siang",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              ResetDataView(
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
