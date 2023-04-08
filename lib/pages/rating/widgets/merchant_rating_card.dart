import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class MerchantRatingCard extends StatefulWidget {
  const MerchantRatingCard({Key? key}) : super(key: key);

  @override
  State<MerchantRatingCard> createState() => _MerchantRatingCardState();
}

class _MerchantRatingCardState extends State<MerchantRatingCard> {

  final double _hight = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.appGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Row(),
            SizedBox(height:_hight ),
            // stars
            Row(),
            SizedBox(height:_hight ),
            Text("هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف",
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffededed)),
            ),
            SizedBox(height:_hight ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
