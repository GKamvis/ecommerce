import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldForSearchPage extends StatelessWidget {
  const SearchFieldForSearchPage({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(CupertinoIcons.search),
          suffixIcon: InkWell(
            onTap: () {
              _searchController.clear();
            },
            child: const Icon(Icons.cancel)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
