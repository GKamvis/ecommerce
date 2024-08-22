import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Search_page/Search_page_widgets/selectale_widget.dart';

class FilterPageBody extends StatefulWidget {
  const FilterPageBody({super.key});

  @override
  State<FilterPageBody> createState() => _FilterPageBodyState();
}

class _FilterPageBodyState extends State<FilterPageBody> {
  RangeValues _values = const RangeValues(0, 100);

  String selectedGender = "All";

  String selectedBrand = "Puma";

  String selectedColor = "Black";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gender
          const Text(
            'Gender',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              selectableButton("All", selectedGender, (value) {
                setState(() {
                  selectedGender = value;
                });
              }),
              selectableButton("Men", selectedGender, (value) {
                setState(() {
                  selectedGender = value;
                });
              }),
              selectableButton("Women", selectedGender, (value) {
                setState(() {
                  selectedGender = value;
                });
              }),
            ],
          ),
          const SizedBox(height: 20),

          // Brand
          const Text(
            'Brand',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              selectableButton("Adidas", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
              selectableButton("Puma", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
              selectableButton("CR7", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
              selectableButton("Nike", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
              selectableButton("Yeezy", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
              selectableButton("Supreme", selectedBrand, (value) {
                setState(() {
                  selectedBrand = value;
                });
              }),
            ],
          ),
          const SizedBox(height: 20),

          RangeSlider(
              values: const RangeValues(0, 100),
              min: 0,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _values.start.round().toString(),
                _values.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _values = values;
                });
              }),
          const SizedBox(height: 20),

          // Color
          const Text(
            'Color',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              selectableButton("White", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
              selectableButton("Black", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
              selectableButton("Grey", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
              selectableButton("Yellow", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
              selectableButton("Red", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
              selectableButton("Green", selectedColor, (value) {
                setState(() {
                  selectedColor = value;
                });
              }),
            ],
          ),

          const Spacer(),

          // Apply Filter Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Apply filter logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Apply Filter',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
