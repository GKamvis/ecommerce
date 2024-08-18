import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FeaturedProductsRow extends StatelessWidget {
  String text1;
  String text2;
  FeaturedProductsRow({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(text2,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple)),
        ],
      ),
    );
  }
}
