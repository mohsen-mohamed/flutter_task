import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';

class StatusSummaryListItem extends StatelessWidget {
  const StatusSummaryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.appGreyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
            child: Text("F6027998605",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
          ),
          const Divider(thickness: .3,color: Color(0xff969696),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("الاسم : خالد طايع",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Text("العنوان : ميدان صلاح الدين شارع المنشيه",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Row(
                  children: [
                    Text("المبلغ المستلم : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("280.00",style: TextStyle(color: Color(0xff34D399), fontSize: 12,fontWeight: FontWeight.w600)),
                  ],
                ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.greenAccent,size: 15,))

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
