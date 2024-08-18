import 'package:flutter/material.dart';

class PromotorContainer extends StatelessWidget {
  const PromotorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.3,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple,
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Text(
                    ' Get Summer Discount',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(' 25 % OFF',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(' For Kids',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(width: 40),
            Image.asset('assets/images/kid.png'),
          ],
        ),
      ),
    );
  }
}
