import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/customtextformfield.dart';
import '../../../../core/support_font.dart';


class Productview extends StatelessWidget {
  const Productview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('assets/images/image2.png'),
        Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("product name"),
                  Text("22\$")
                ],
              ),
              SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('3  '),
                      Icon(Icons.star , color: Colors.amber,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 22,),
              Text('Product Description',
              style: AppWidget.LightTextFeildStyleF(),),
              SizedBox(height: 22,),
             RatingBar.builder(
               initialRating: 3,
                 minRating: 1,
                 direction: Axis.horizontal,
                 allowHalfRating: true,
                 itemCount: 5,
                 itemPadding: EdgeInsets.symmetric(horizontal: 4),
                 itemBuilder: (context, _)=> Icon(Icons.face , color: Colors.amber,),
                 onRatingUpdate: (rating) {
                 print(rating);
                 }
             ),
              SizedBox(height: 22,),
              CustomTextFromField(
                  labltext: "Type your feedback",
                  isSecure: false,
                sufficon: IconButton(
                  onPressed: (){},
                 icon: Icon(Icons.send),),
              ),
              SizedBox(height: 22,),
              Text('Comments' ,
              style: AppWidget.lightblueF(),),
              SizedBox(height: 20,),

              ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context , index)=> CommentproductUser(),
                  separatorBuilder: (context , index)=> Divider(),
                  itemCount: 10
              )

            ],
          ),
        ),
      ],
    );
  }
}

class CommentproductUser extends StatelessWidget {
  const CommentproductUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Use Name',
            style: AppWidget.smallTextFeildStyleF(),),
            Text('Comment',
              style: AppWidget.smallText(),),
            Row(
              children: [
                Column(
                  children: [
                    Text('Replay',
                      style: AppWidget.smallTextFeildStyleF(),),
                    Text('Replay...',
                      style: AppWidget.smallText(),)
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
