import 'package:crud/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              "CRUD (Create, Read, Update, Delete) Product with deskripsi",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.CRUD),
                child: Text('Add Product')),
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.VIEW_DATA),
                child: Text('View Product')),
          ),
        ],
      ),
    ));
  }
}
