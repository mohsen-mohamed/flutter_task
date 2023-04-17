import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_task/core/theme/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({required this.starsCount, required this.percentage, Key? key}) : super(key: key);

  final int starsCount;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppTheme.defaultColor);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              starsCount.toString(),
              style: textStyle,
            ),
            const Text(
              " نجوم",
              style: textStyle,
            ),
            const SizedBox(width: 12),
            RatingBar.builder(
              itemBuilder: (_, __) => const Icon(Icons.star_rate_rounded, color: Color(0xffFF8A00), size: 18),
              onRatingUpdate: (_) {},
              ignoreGestures: true,
              unratedColor: Colors.white,
              initialRating: starsCount.toDouble(),
              minRating: 1,
              maxRating: 5,
              direction: Axis.horizontal,
              itemSize: 20,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: LinearPercentIndicator(
                // width: MediaQuery.of(context).size.width - 50,
                animation: true,
                isRTL: true,
                lineHeight: 7,
                animationDuration: 500,
                percent: percentage/100,
                barRadius: const Radius.circular(50),
                progressColor: AppTheme.defaultColor,
                backgroundColor: const Color(0xff3B3F49),
                padding: EdgeInsets.zero,
              ),
            ),
            const SizedBox(width: 10),
            Text("% $percentage", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
