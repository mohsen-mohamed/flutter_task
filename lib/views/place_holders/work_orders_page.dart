import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WorkOrdersPage extends StatelessWidget {
  const WorkOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(runtimeType.toString()),);
  }
}
