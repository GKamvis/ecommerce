import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget{
  const OrderSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color:  Colors.grey[200],
        ),
        height: MediaQuery.of(context).size.height * 0.26,
        width:  double.infinity,
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
          children: [
            
            
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Order Summary :" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300),),
            ) , 
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Items'),
                Text('1  '),
              ],
            ),
                               const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Subtotal'),
                Text('\$ 50  '),
              ],
            ),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Discount'),
                Text('\$ 5  '),
              ],
            ),
                               const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Delivery Charges'),
                Text('\$ 5  '),
              ],
            ),
            SizedBox(width: double.infinity,height:1 , child: Container(color: Colors.black,),),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('  Total'),
                Text('\$ 60  '),
              ],
            )
            
        
            
          ],
        ),
      ),
    );
  }
}


