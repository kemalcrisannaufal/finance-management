import 'package:get/get.dart';

import '../modules/addPendapatan/bindings/add_pendapatan_binding.dart';
import '../modules/addPendapatan/views/add_pendapatan_view.dart';
import '../modules/addTransaction/bindings/add_transaction_binding.dart';
import '../modules/addTransaction/views/add_transaction_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [],
    ),
    GetPage(
      name: _Paths.ADD_TRANSACTION,
      page: () => const AddTransactionView(),
      binding: AddTransactionBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PENDAPATAN,
      page: () => const AddPendapatanView(),
      binding: AddPendapatanBinding(),
    ),
  ];
}
