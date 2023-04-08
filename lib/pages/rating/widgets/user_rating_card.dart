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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "تقييم الندوب",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          const Divider(
            thickness: .3,
            color: Color(0xff969696),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RatingStarsWidget(
                  starsCount: 5,
                  percentage: 70,
                ),
                const RatingStarsWidget(
                  starsCount: 1,
                  percentage: 50,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // Icon(Icons.tag_faces,size: 35,color: Colors.green,),
                        Image.asset("assets/images/face_smile.png", width: 35, height: 25),
                        const SizedBox(height: 5),
                        const Text(
                          "راضي",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.green),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "70%",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        // Icon(Icons.tag_faces,size: 35,color: Colors.red,),
                        Image.asset("assets/images/angry_face.png", width: 35, height: 25),
                        const SizedBox(height: 5),
                        const Text(
                          "غير راضي",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.red),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "50%",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
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
