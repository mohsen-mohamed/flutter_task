import 'package:flutter/material.dart';
import 'package:flutter_task/data/fake_data_source.dart';

import '../widgets/merchant_rating_card.dart';

class MerchantTab extends StatelessWidget {
  const MerchantTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
          itemCount: FakeDataSource.merchantRatingList.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) => MerchantRatingCard(ratingModel: FakeDataSource.merchantRatingList[index]),
        )
    );
  }
}
