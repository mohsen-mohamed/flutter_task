import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_task/models/rating_model.dart';

import '../../../core/theme/theme.dart';

class MerchantRatingCard extends StatefulWidget {
  const MerchantRatingCard({required this.ratingModel, required this.onUsefulTab, required this.isLoading, Key? key}) : super(key: key);

  final RatingModel ratingModel;
  final VoidCallback onUsefulTab;
  final bool isLoading;
  @override
  State<MerchantRatingCard> createState() => _MerchantRatingCardState();
}

class _MerchantRatingCardState extends State<MerchantRatingCard> {
  final double _height = 10;
  late RatingModel _newModel;
  @override
  void initState() {
    super.initState();
    _newModel = RatingModel(widget.ratingModel.user, widget.ratingModel.rating, widget.ratingModel.date, widget.ratingModel.comment, widget.ratingModel.useful);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.appGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    _newModel.user.assetImagePath,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  _newModel.user.name,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(height: _height),
            // stars
            Row(
              children: [
                RatingBar.builder(
                  itemBuilder: (_, __) => const Icon(Icons.star_rate_rounded, color: Color(0xffFF8A00), size: 18),
                  onRatingUpdate: (_) {},
                  ignoreGestures: true,
                  unratedColor: Colors.white,
                  initialRating: _newModel.rating.toDouble(),
                  minRating: 1,
                  maxRating: 5,
                  direction: Axis.horizontal,
                  itemSize: 20,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                ),
                const SizedBox(width: 10),
                Text(
                  _newModel.date,
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                )
              ],
            ),
            SizedBox(height: _height),
            Text(
              _newModel.comment,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffededed)),
            ),
            SizedBox(height: _height),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (_newModel.useful)
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/thx.png",
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(width: 7),
                      const Text(
                        "شكرا لك علي تقييمك",
                        style: TextStyle(color: Color(0xff34D399), fontSize: 10, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                if (_newModel.useful == false && widget.isLoading == false)
                  ElevatedButton(
                      onPressed: () {
                        widget.onUsefulTab.call();
                        // setState(() {
                        //  _newModel = _newModel.copyWith(useful: true);
                        // }
                        // );
                      },
                      style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))), backgroundColor: MaterialStateProperty.all(const Color(0xff3B3F49))),
                      child: const Text(
                        "مفيد",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppTheme.defaultColor),
                      )),
                if (_newModel.useful == false && widget.isLoading == true) const SizedBox(width: 16, height: 16, child: CircularProgressIndicator.adaptive()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
