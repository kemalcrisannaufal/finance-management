import 'package:get/get.dart';

import 'package:online_leaning/app/modules/home/controllers/transaction_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionController>(
      () => TransactionController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
