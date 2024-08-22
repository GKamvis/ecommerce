import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Search_page/Search_page_widgets/searc_product.dart';
import 'package:myapp/presentation/views/Search_page/Search_page_widgets/search_field.dart';
import 'package:myapp/presentation/views/Search_page/search_page_filter.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // searc Box
        SearchFieldForSearchPage(searchController: _searchController),

        // filter row

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Result for "Nike"',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterPage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.filter_list_outlined,
                    color: Colors.deepPurple,
                  ))
            ],
          ),
        ),

        // search product
        const SearcProduct(),
      ],
    ));
  }
}
