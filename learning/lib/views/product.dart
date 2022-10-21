import 'package:flutter/material.dart';
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${controller.count}"),
          Text("${context.width}"),
          Text("${context.height}"),
          Text("${context.orientation}"),
          ElevatedButton(
              onPressed: () {
                print(
                    Get.arguments); // give the current args for current screen
                print(Get.previousRoute); // give the name of previous route
                print(Get.rawRoute);
                Routing routing = Get.routing;
                print(routing.current);
                print(Get.isSnackbarOpen);
                print(GetPlatform.isAndroid);
                print(GetPlatform.isMobile);
                print(GetPlatform.isWeb);
              },
              child: Text("Print Advanced APIs Result"))
        ],
      )),
    );
  }
}
