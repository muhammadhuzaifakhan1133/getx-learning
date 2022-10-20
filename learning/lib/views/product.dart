import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learning/controllers/home.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find(tag: "Home");
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
        child: const Icon(Icons.arrow_back_ios_sharp),
        onTap: () {
          Get.back();
        },
      )),
      body: Center(child: Text("${controller.count}")),
    );
  }
}
