import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_leaning/app/modules/home/controllers/home_controller.dart';
import 'package:online_leaning/app/shared/widgets/appbar.dart';

import '../controllers/add_pendapatan_controller.dart';

class AddPendapatanView extends GetView<AddPendapatanController> {
  const AddPendapatanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          userName: "Kemal Crisannaufal", onNotificationPressed: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent[700],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "+    Tambah Pendapatan",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.pendapatanController,
              decoration: InputDecoration(
                labelText: "Total Pendapatan",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.find<HomeController>().pendapatan.value =
                    int.parse(controller.pendapatanController.text);
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
    );
  }
}
