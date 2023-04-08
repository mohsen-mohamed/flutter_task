import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';

import '../../models/status_model.dart';

class StatusSummaryListItem extends StatelessWidget {
  const StatusSummaryListItem({required this.statusModel,Key? key}) : super(key: key);

  final StatusModel statusModel;
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
            child: Text(statusModel.id,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
          ),
          const Divider(thickness: .3,color: Color(0xff969696),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("الاسم : ${statusModel.userName}",style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Text("العنوان : ${statusModel.address}",style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Row(
                  children: [
                    const Text("المبلغ المستلم : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text(statusModel.receivedAmount.toStringAsFixed(2),style: const TextStyle(color: Color(0xff34D399), fontSize: 12,fontWeight: FontWeight.w600)),
                  ],
                ),
                    Stack(
                      children: [
                        Image.asset("assets/images/call_icon.png",width: 35,height: 35,),
                        Positioned.fill(child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),splashColor: Colors.white30,
                            onTap: (){},
                          ),
                        ))
                      ],
                    ),

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
