import 'package:get/get.dart';

import '../controllers/add_pendapatan_controller.dart';

class AddPendapatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPendapatanController>(
      () => AddPendapatanController(),
    );
  }
}
