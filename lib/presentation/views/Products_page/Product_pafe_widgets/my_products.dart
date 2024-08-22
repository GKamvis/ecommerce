import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Product_details/product_details.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , mainAxisSpacing: 10, crossAxisSpacing: 10), 
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
      height: MediaQuery.of(context).size.width * 0.36, // Set the height you want
      child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
              },

              child: Hero(
                tag: 'product',
                transitionOnUserGestures: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/product.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            top: 4,
                            right: 4,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.heart, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        children: [
                           const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                               
                              Text(
                                'Nike',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                '\$12.8',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                
                            
                
                
                          ),
                
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.add_circled_solid, color: Colors.deepPurple),
                          ),
                          
                
                
                          
                        ],
                
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        }),
      );
  }
}