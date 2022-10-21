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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const ProductView(), transition: Transition.downToUp);
                },
                child: const Text("Go to product Screen")),
            ElevatedButton(
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: Text("Change Theme")),
            ElevatedButton(
                onPressed: () {
                  SnackbarwithGet();
                },
                child: Text("show snackbar")),
            ElevatedButton(
                onPressed: () {
                  DialogWithGet();
                },
                child: Text("show dialog")),
            ElevatedButton(
                onPressed: () {
                  bottomSheetWithGet();
                },
                child: Text("show bottom sheet")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: controller.increment),
    );
  }

  bottomSheetWithGet() {
    Get.bottomSheet(
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white),
          child: Wrap(
            children: [
              ListTile(title: Text("Music")),
              ListTile(title: Text("Video"))
            ],
          ),
        ),
        enableDrag: false,
        isDismissible: false);
  }

  DialogWithGet() {
    Get.defaultDialog(
        onCancel: () => Get.back(),
        title: "Delete",
        onConfirm: () => Get.back(),
        content: Text("Do you want to delete?"));
  }
}

SnackbarwithGet() {
  Get.snackbar("title", "message",
      backgroundColor: Colors.green,
      colorText: Colors.white,
      borderRadius: 30,
      duration: Duration(seconds: 3),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      icon: Icon(Icons.warning),
      margin: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM);
}
