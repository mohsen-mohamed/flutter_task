import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/utils/enums.dart';

@RoutePage()
class StatusPage extends StatelessWidget {
  const StatusPage({required this.status,Key? key}) : super(key: key);
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("${runtimeType.toString()} \n $status"));
  }
}
