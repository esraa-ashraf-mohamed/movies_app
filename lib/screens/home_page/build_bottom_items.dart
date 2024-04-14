import 'package:flutter/material.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_theme.dart';

int currentIndex = 0;

bottomNavigation({required BuildContext context, onTap}) {

  return Theme(data: Theme.of(context).copyWith(
      canvasColor: AppTheme.darkGrayColor),
      child: BottomNavigationBar(
        items: [
          bottomItems(path: AppConstants.home, title: 'HOME'),
          bottomItems(path: AppConstants.searchIcon, title: 'SEARCH'),
          bottomItems(path: AppConstants.browse, title: 'BROWSE'),
          bottomItems(path: AppConstants.listWatched, title: 'WATCHLIST'),
        ],
        onTap: onTap,
        iconSize: 34,
        currentIndex: currentIndex,
      )
  );
}

bottomItems({required String path, required String title}){
  return BottomNavigationBarItem(
    icon: Image.asset(path),
    label: title,
  );
}