import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartElements extends StatelessWidget {
  const CartElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.6,
            color:  Colors.grey[200],
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/product.png'),
                const SizedBox(width: 10,),
                Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Shoes' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                    Text('Nike' , style: TextStyle(fontSize: 17 ,color: Colors.grey[500] , fontWeight: FontWeight.bold) ,),
                    const Text('\$ 40' , style: TextStyle(fontSize: 17  , color: Colors.deepPurple),),
                  ],
                ),
                const SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.delete , color: Colors.red,)),
                      Row(children: [
                      IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.minus_circle_fill, color: Colors.deepPurple,)),
                      const Text('1'),
                      IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.plus_circle_fill, color: Colors.deepPurple,)),
                    ],),       
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}