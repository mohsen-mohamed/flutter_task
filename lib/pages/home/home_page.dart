import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/pages/home/widgets/custody_list.dart';

import '../../core/theme/theme.dart';
import 'widgets/list_tile_button_widget.dart';
import 'widgets/summary_list.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double _height = 12;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 10),
      children: [
        const CustodyList(),
        SizedBox(height: _height),
        const SummaryList(),
        SizedBox(height: _height),
        const ListTileButtonWidget(title: "تقييمات التجار والعملاء",icon: Icon(Icons.star_border_purple500_rounded,size: 30,color: AppTheme.defaultColor,),percentage: "80" ),
        SizedBox(height: _height),
        const ListTileButtonWidget(title: "استلام الشحنات",icon: Icon(Icons.qr_code_2,size: 30,color: AppTheme.defaultColor,),),
      ],
    );
  }
}
