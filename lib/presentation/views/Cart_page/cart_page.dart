import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Cart_page/Cart_page_widgets/cart_elements.dart';
import 'package:myapp/presentation/views/Cart_page/Cart_page_widgets/order_summary.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // items in cart
           const CartElements(),
           const SizedBox(height: 10,),




          // order sumary

          const OrderSummary(),
          const SizedBox(height: 10,),

          // check out button

          MaterialButton(onPressed: (){}, child:  Container( decoration: BoxDecoration(color: Colors.deepPurple , borderRadius: BorderRadius.circular(10)), height: 50, width: double.infinity, child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Check Out" , textAlign: TextAlign.center, style: TextStyle(fontSize: 20  , color: Colors.white, fontWeight: FontWeight.bold ) ,),
          ),),)
        ],
      ),
    );
  }
}

