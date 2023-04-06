import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class ListTileButtonWidget extends StatelessWidget {
  const ListTileButtonWidget({required this.icon, required this.title, this.percentage, Key? key}) : super(key: key);

  final Widget icon;
  final String title;
  final String? percentage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
      tileColor: AppTheme.appGreyColor,
      dense: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      leading: icon,
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
          ),
          const SizedBox(width: 25),
          if (percentage?.isNotEmpty ?? false)
            Text(
              "% $percentage",
              style: const TextStyle(color: AppTheme.defaultColor, fontWeight: FontWeight.w500, fontSize: 13),
            ),
        ],
      ),
      trailing: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
