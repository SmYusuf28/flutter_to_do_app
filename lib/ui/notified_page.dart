import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/ui/themes.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String lable;
  const NotifiedPage({Key? key, required this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
          ),
        ),
        title: Text(
          this.lable.toString().split("|")[0],
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Themes.primaryClr,
          ),
          child: Center(
            child: Text(
              this.lable.toString().split("|")[1],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
