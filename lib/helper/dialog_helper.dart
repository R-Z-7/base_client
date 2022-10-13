import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  //Show dialog
  static void showErrorDialog(
      {String title = 'Error', String description = 'something went wrong'}) {
    Get.dialog(Dialog(
      child: Column(
        children: [
          Text(
            title,
            style: Get.textTheme.headline4,
          ),
          Text(
            description,
            style: Get.textTheme.headline4,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Okay"))
        ],
      ),
    ));
  }
}
