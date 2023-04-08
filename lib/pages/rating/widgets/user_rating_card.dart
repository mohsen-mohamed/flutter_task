import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import 'rating_stars_widget.dart';

class UserRatingCard extends StatefulWidget {
  const UserRatingCard({Key? key}) : super(key: key);

  @override
  State<UserRatingCard> createState() => _UserRatingCardState();
}

class _UserRatingCardState extends State<UserRatingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.appGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Text("تقييم الندوب",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
          ),
          const Divider(thickness: .3,color: Color(0xff969696),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RatingStarsWidget(starsCount: 5,percentage: 70,),
                const RatingStarsWidget(starsCount: 1,percentage: 50,),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: const [
                      Icon(Icons.tag_faces,size: 35,color: Colors.green,),
                      SizedBox(height: 5),
                      Text("راضي",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.green),),
                      SizedBox(height: 5),
                      Text("70%",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                    ],),
                    const SizedBox(width: 50),
                    Column(children: const [
                      Icon(Icons.tag_faces,size: 35,color: Colors.red,),
                      SizedBox(height: 5),
                      Text("غير راضي",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.red),),
                      SizedBox(height: 5),
                      Text("50%",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                    ],),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
