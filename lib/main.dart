import 'package:flutter/material.dart';
import 'package:movies_app/screens/browse_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/home_page/home_page.dart';
import 'package:movies_app/screens/search_screen.dart';
import 'package:movies_app/screens/splash_screen.dart';
import 'package:movies_app/screens/watch_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (_) => const HomePage(),
        HomeScreen.routeName : (_) => const HomeScreen(),
        SplashScreen.routeName : (_) => const SplashScreen(),
        SearchScreen.routeName : (_) => const SearchScreen(),
        BrowseScreen.routeName : (_) => const BrowseScreen(),
        WatchedListScreen.routeName : (_) => const WatchedListScreen()
      },
      initialRoute: HomePage.routeName,
    );
  }
}
