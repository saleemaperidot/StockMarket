import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradingapp/controllers/auth.dart';
import 'package:tradingapp/custom_widgets/custombottomnavigation.dart';
import 'package:tradingapp/views/list.dart';
import 'package:tradingapp/views/market.dart';
import 'package:tradingapp/views/onboading.dart';
import 'package:tradingapp/views/portfolio.dart';
import 'package:tradingapp/views/settings.dart';
import 'package:tradingapp/views/splashscreen.dart';
import 'package:tradingapp/views/stock_file.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final pages = [StockFile(), ListPage(), Market(), Portfolio(), Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, value, _) {
          return SafeArea(
            child: pages[value],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
