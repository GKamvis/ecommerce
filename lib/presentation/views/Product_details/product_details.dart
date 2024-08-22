import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                
              Stack(
                children: [SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  
                  child: Hero(
                    tag: 'product',
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/product.png'),
                          fit: BoxFit.cover,
                        ),
                                     ),
                      
                    ),
                  ),
                
                  ),
                  Positioned(child: Row(children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: const Icon(CupertinoIcons.back , color: Colors.white,)),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart_circle_fill , size: 35 , color: Colors.white,)),
                  ],))
                  ] ,
              ),
                const SizedBox(height: 10,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    
                    children: [
                      const Text('Nike Shoes' , style: TextStyle( fontSize: 15 , fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(children: [
                          Icon(CupertinoIcons.star_fill , color: Colors.yellow[700]),
                          const Text('  4.6 '),
                          const Text('(21 Review)' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
                        ],),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Text(' \$ 348' , style: TextStyle(color: Colors.deepPurple , fontSize: 15 , fontWeight: FontWeight.bold),),
                  const Spacer(),
                  
                ],),
                const SizedBox(height: 10,),
          
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description" ,  textAlign: TextAlign.start , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                      Text('Lorem ImText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, TextScaler? textScaler, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior, Color? selectionColor})'),
                    ],
                  ),
                ),
          
                  MaterialButton(onPressed: (){}, child:  Container( decoration: BoxDecoration(color: Colors.deepPurple , borderRadius: BorderRadius.circular(20)), height: 50, width: double.infinity, child: const Padding(
                        padding: EdgeInsets.all(8.0),
                         child: Text("Buy Now"  , textAlign: TextAlign.center, style: TextStyle(fontSize: 15  , color: Colors.white, fontWeight: FontWeight.bold ) ,), 
                        ),),)
                       
                
            
              
            ],
          ),
        ),
      ),
    );
  }
}