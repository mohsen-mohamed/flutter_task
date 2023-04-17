import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';

class StatusGridItem extends StatelessWidget {
  const StatusGridItem({required this.icon,required this.title,required this.onTab,Key? key}) : super(key: key);

  final Widget icon;
  final String title;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppTheme.appGreyColor,
      ),
      child: InkWell(
        onTap: onTab,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: icon,
                ),
                const SizedBox(height: 6),
                Text(title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
