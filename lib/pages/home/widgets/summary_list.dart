import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';

import 'list_item_widget.dart';

class SummaryList extends StatelessWidget {
  const SummaryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.appGreyColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            ListItemWidget(title: "اجمالي قيمة العهدة", value: 455,useFractions: true),
             ListItemWidget(title: "المحصل نقداً", value: 280,useFractions: true,),
          ],
        ),
      ),
    );
  }
}
