import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradingapp/controllers/auth.dart';
import 'package:tradingapp/views/splashscreen.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  bool isdarkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.find<AuthController>().signOut();
                Get.offAll(() => Root());
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(
          child: Container(
        child: ListTile(
          trailing: IconButton(
              onPressed: () {
                isdarkMode = !isdarkMode;
                Get.changeTheme(Get.isDarkMode
                    ? ThemeData.light()
                    : ThemeData.dark()
                        .copyWith(scaffoldBackgroundColor: Colors.black));
              },
              icon:
                  isdarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode)),
        ),
      )),
    );
  }
}
