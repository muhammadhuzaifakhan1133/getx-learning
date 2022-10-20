import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learning/controllers/home.dart';
import 'package:learning/views/product.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController(), tag: "Home");
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("${controller.count}"))),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.to(const ProductView());
              },
              child: const Text("Go to product Screen"))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: controller.increment),
    );
  }
}
