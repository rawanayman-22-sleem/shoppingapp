import 'package:flutter/material.dart';
import '../../../core/constant.dart';
import '../../../core/custombutton.dart';
import '../../../core/functions/navigator_to.dart';
import 'product/productbody.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> navigatorTo(context, Productbody()),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/image4.jpg',
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: Text(
                      '10% Off',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '220 \$',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '250 \$',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: 'Buy Now',
                        color: blue,
                        colorT: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(16)),
//       ),
//       child:Column(
//         children: [
//           Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(16),
//                     topLeft: Radius.circular(16),
//                     bottomLeft: Radius.circular(16),
//                   ),
//                   child: Stack(
//                     children: [
//                       Image.asset('assets/images/image4.jpg')
//                     ],
//                   ),
//                 ),
//
//                 Positioned(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 90,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: blue,
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(16),
//                             bottomRight: Radius.circular(16)
//                         ),
//                       ),
//                       child: Text('10% Off',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 22
//                         ),),
//                     )
//                 )
//               ]
//           ),
//           SizedBox(height: 15,),
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Product ',
//                       style: AppWidget.LightTextFeildStyleF(),),
//                     IconButton(
//                         onPressed: (){},
//                         icon: Icon(Icons.favorite)),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text('220 \$ ',
//                           style: AppWidget.LightTextFeildStyleF(),),
//                         Text('250 \$ ',
//                             style: TextStyle(
//                                 decoration: TextDecoration.lineThrough,
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey
//                             )),
//                       ],
//                     ),
//                     CustomButton(
//                       onPressed: (){},
//                       text: 'Buy Now',
//                       color: blue,
//                       colorT: Colors.white,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
