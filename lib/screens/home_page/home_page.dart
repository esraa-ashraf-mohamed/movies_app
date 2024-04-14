import 'package:flutter/material.dart';
import 'package:movies_app/screens/browse_screen.dart';
import 'package:movies_app/screens/home_page/build_bottom_items.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/search_screen.dart';
import 'package:movies_app/screens/watch_list_screen.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  List screens = [
    const HomeScreen(),
    const SearchScreen(),
    const BrowseScreen(),
    const WatchedListScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(
          context: context,
        onTap: (index){
          currentIndex = index;
          setState(() {});
        }
      ),
      body: screens[currentIndex],
    );
  }
}
