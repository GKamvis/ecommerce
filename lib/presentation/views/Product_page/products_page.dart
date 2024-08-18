import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Product_page/Product_pafe_widgets/my_products.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Products'),
      ),
      body: MyProducts()
    );
  }
}