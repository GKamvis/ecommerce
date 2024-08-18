import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Home_page/Home_page_widgets/featured_products.dart';
import 'package:myapp/presentation/views/Home_page/Home_page_widgets/featured_products_row.dart';
import 'package:myapp/presentation/views/Home_page/Home_page_widgets/promotor_container.dart';
import 'package:myapp/presentation/views/Home_page/Home_page_widgets/search_field.dart';
import 'Home_page_widgets/app_bar.dart';
import 'Home_page_widgets/most_papular_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(), // Use the custom AppBar here
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // search
            SearchField(),
            // promotion
            const PromotorContainer(),
            // Featured products
            FeaturedProductsRow(text1: 'Featured', text2: 'See All'),
    
            const FeaturedProducts(),
        
            // Popular products
            FeaturedProductsRow(text1: 'Most Popular', text2: 'See All'),
            const MostPapularProducts(),
          ],
        ),
      ),
    );
  }
}
