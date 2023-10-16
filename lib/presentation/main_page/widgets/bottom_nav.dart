import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'New & Hot',
                activeIcon: Icon(Icons.video_collection)),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Fast Laughs',
                activeIcon: Icon(Icons.emoji_emotions)),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.search_outline),
                label: 'Search',
                activeIcon: Icon(Ionicons.search)),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.arrow_down_circle_outline),
                label: 'Downloads',
                activeIcon: Icon(Ionicons.arrow_down_circle))
          ],
        );
      },
    );
  }
}
