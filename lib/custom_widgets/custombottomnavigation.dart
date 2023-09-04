import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier<int> pageNotifier = ValueNotifier(0);

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, int value, _) {
          return BottomNavigationBar(
            onTap: (index) {
              pageNotifier.value = index;
            },
            currentIndex: value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: " Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.article_outlined), label: " files"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apartment), label: "market"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.circle_notifications_outlined),
                  label: " portfolio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: " Settings"),
            ],
          );
        });
  }
}
