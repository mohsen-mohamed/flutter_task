import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({required this.title,required this.value,this.useFractions,Key? key}) : super(key: key);
  final String title;
  final double value;
  final bool? useFractions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
          Text(value.toStringAsFixed(useFractions == true ? 2 : 0),style: const TextStyle(color: AppTheme.defaultColor,fontSize: 13,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}
