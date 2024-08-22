import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Products_page/Product_pafe_widgets/my_products.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Products'),
      ),
      body: const MyProducts()
    );
  }
}