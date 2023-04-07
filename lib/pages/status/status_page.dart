import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/pages/status/status_summary_list_item.dart';

import '../../core/utils/enums.dart';

@RoutePage()
class StatusPage extends StatelessWidget {
  const StatusPage({required this.status, Key? key}) : super(key: key);
  final OrderStatus status;

  String _transTitle(OrderStatus orderStatus) {
    switch (orderStatus) {
      case OrderStatus.onItsWay:
        return "قيد التواصل";
      case OrderStatus.delivered:
        return "تم التسليم";
      case OrderStatus.notDelivered:
        return "لم يتم التسليم";
      case OrderStatus.discards:
        return "مرتجع";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _transTitle(status),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 34),
        itemCount: 3,
        separatorBuilder: (_, __) => const SizedBox(height: 13),
        itemBuilder: (context, index) => const StatusSummaryListItem(),
      ),
    );
  }
}
