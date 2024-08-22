import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
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

                       MaterialButton(onPressed: (){}, child:  Container( decoration: BoxDecoration(color: Colors.deepPurple , borderRadius: BorderRadius.circular(20)), height: 50, width: 100, child: const Padding(
                      padding: EdgeInsets.all(8.0),
                       child: Text("Track Order"  , textAlign: TextAlign.center, style: TextStyle(fontSize: 15  , color: Colors.white, fontWeight: FontWeight.bold ) ,), 
                      ),),)
                     
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      }, 
      child: const Icon(CupertinoIcons.archivebox_fill),),
    );
  }
}