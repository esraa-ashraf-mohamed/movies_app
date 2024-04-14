import 'package:flutter/material.dart';
import 'package:movies_app/utils/app_constants.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = 'search';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))
            ),
            prefixIcon: Icon(Icons.search),
            label: Text(
                'Search'
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Image.asset(AppConstants.searchLogo),
              const Text('No movies found'),
            ],
          ),
        )
      ],
    );
  }
}
