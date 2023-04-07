import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';
import 'package:flutter_task/pages/home/widgets/list_item_widget.dart';

class CustodyList extends StatelessWidget {
  const CustodyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.appGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            child: Text("العهدة الحالية",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
          ),
          const Divider(thickness: 1,color: Color(0xff969696),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            child: Column(
              children: const [
                ListItemWidget(title: "اجمالي الشحنات", value: 30),
                ListItemWidget(title: "تم التسليم", value: 3),
                ListItemWidget(title: "لم يتم التسليم", value: 5),
                ListItemWidget(title: "مرتجع", value: 1),
                ListItemWidget(title: "قيد التوصيل", value: 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
