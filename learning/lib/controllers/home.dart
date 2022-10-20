import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> count = 0.obs;
  increment() => count.value++;
}
