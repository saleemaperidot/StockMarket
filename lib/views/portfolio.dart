import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradingapp/views/tabbar_view/history.dart';
import 'package:tradingapp/views/tabbar_view/holdings.dart';
import 'package:tradingapp/views/tabbar_view/performance.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Portfolio",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [Icon(Icons.menu_rounded)],
          bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey, Colors.grey.shade300]),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              tabs: [
                Tab(
                  child: Text(
                    "Holdings",
                  ),
                ),
                Container(
                  child: Tab(
                    iconMargin: EdgeInsetsGeometry.infinity,
                    child: Text(
                      "Performance",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "History",
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [Holdings(), Performance(), History()]),
      ),
    );
  }
}
